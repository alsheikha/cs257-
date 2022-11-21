'''
    api.py
    Amir Al-Sheikh 11/17/22

'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)






@api.route('/<platform_id>/<genre_id>/<publisher_id>') 
def get_videogames(platform_id, genre_id, publisher_id):
    ''' Returns a table of top 100 video games

        Table is sorted by rank


        Returns an empty list if there's any database failure.
    '''
    query = '''
            SELECT videogames.Rank, videogames.Name, platforms.platform, videogames.Year, genres.genre, publishers.publisher, videogames.Global_Sales 
            FROM videogames, genres, platforms, publishers
            WHERE videogames.platform_id = platforms.id 
            AND videogames.genre_id = genres.id
            AND videogames.publisher_id = publishers.id '''
    if(int(platform_id) != 1):
        query += "AND platforms.id = '" + str(int(platform_id)-1) + "'"
    if(int(genre_id) != 1):
        query += "AND genres.id = '" + str(int(genre_id)-1) + "'"
    if(int(publisher_id) != 1):
        query += "AND publishers.id = '" + str(int(publisher_id)-1) + "'"
    query += 'ORDER BY videogames.Rank'

  
   
    games_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            game = {'Rank':row[0],
                      'Name':row[1],
                      'Platform':row[2],
                      'Year':row[3],
                      'Genre':row[4],
                      'Publisher':row[5],
                      'Sales':row[6]
                      }
            games_list.append(game)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(games_list[:100])




@api.route('/platforms/') 
def get_platforms():


    query = '''
            SELECT id, platform
               FROM platforms ORDER BY platform
            '''


    platform_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            platform = {'id':int(row[0]),
                      'platform':row[1],}
            platform_list.append(platform)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(platform_list)

@api.route('/genres/') 
def get_genres():
     
    query = '''
            SELECT id, genre
               FROM genres ORDER BY genre
            '''


    genre_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            genre = {'id':int(row[0]),
                      'genre':row[1],}
            genre_list.append(genre)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(genre_list)

@api.route('/publishers/') 
def get_publishers():
     
    query = '''
            SELECT id, publisher
               FROM publishers ORDER BY publisher
            '''


    publisher_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            publisher = {'id':int(row[0]),
                      'publisher':row[1],}
            publisher_list.append(publisher)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(publisher_list)

