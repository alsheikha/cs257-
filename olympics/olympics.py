
'Amir Al-Sheikh 11/18/22'

import psycopg2
import sys
import config

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)



def print_usage_statement():
    print("Use -a or --all to print all NOCs and their gold medal count")
    print("Use -s or --search to return all athletes for a specified NOC (e.g python3 olympics.py -s MOZ)")
    print("Use -t or --tug for all Tug of War gold medalists")
    print("Use -h or --h for help")


def print_all_noc():
     
    query = '''
            SELECT noc_countries.noc, COUNT(medal)
            FROM noc_countries, appearances
            WHERE noc_countries.noc = appearances.noc
            AND appearances.medal = 'Gold'
            GROUP BY noc_countries.noc
            ORDER BY COUNT(medal) DESC;
            '''


    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            print(row[1], row[0])
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)
    
def print_TOW():  
    query = '''
            SELECT athletes.first_name, athletes.last_name, appearances.noc, olympics.year
            FROM athletes, appearances, olympics
            WHERE appearances.event_id = 4
            AND athletes.id = appearances.athlete_id
            AND olympics.id = appearances.olympics_id
            ORDER BY olympics.year;
            '''

    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, tuple())
        for row in cursor:
            name = '{:<20s}{:<30s}{:>20s}{:>10s}'.format(row[0],row[1],row[2], str(row[3]))
            print(name)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)


def print_athletes_for_noc(search_text): 
    query = '''
            SELECT athletes.first_name, athletes.last_name
            FROM athletes, appearances
            WHERE appearances.noc = %s
            AND athletes.id = appearances.athlete_id
            ORDER BY athletes.last_name;
            '''


    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (search_text,))
        for row in cursor:
            name = '{:<20s}{:<10s}'.format(row[0],row[1])
            print(name)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)




def main():
    if len(sys.argv) in [2,3]:
        if sys.argv[1] in ['-h','--help']:
            print_usage_statement()
        elif sys.argv[1] in ['-a','--all']:
            print_all_noc() 
            if len(sys.argv) == 3:
                print('to specify noc, try -s or --search')
        elif sys.argv[1] in ['-s','--search']:
            print_athletes_for_noc(sys.argv[2])
        elif sys.argv[1] in ['-t','--tug']:
            print_TOW()
    else:
        print_usage_statement()

if __name__ == '__main__':
    main()