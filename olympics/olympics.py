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
    print("This is a simple ")


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



def main():
    if len(sys.argv) in [2,3]:
        if sys.argv[1] in ['-h','--help']:
            print_usage_statement()
        elif sys.argv[1] in ['-a','--all']:
            print_all_noc() 
            if len(sys.argv) == 3:
                print('to specify noc, try -s or --search')
        elif sys.argv[1] in ['-s','--search']:
            print_search(sys.argv[2])
    else:
        print_usage_statement()

if __name__ == '__main__':
    main()