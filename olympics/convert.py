'''
Author: Amir Al-Sheikh 10/20
Organizing larger csv files into SQL table-friendly csv files

WRITING
athletes.csv: [ID, first_name, last_name],
events.csv: [ID, Sport, Event]
olympics.csv: [ID, Year, Season, City]
appearance.csv: [athlete_id, event_id, games_id, Sex, Age, Height, Weight, Medal, NOC]
noc_countries.csv: [NOC, Country]
'''

import csv

def main():
    #reading file
    with open('athlete_events.csv', 'r') as athlete_events:
        athlete_events_data = csv.reader(athlete_events)

        #writing files
        athletes_file = open('athletes.csv', mode='w')
        athletes_writer = csv.writer(athletes_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        events_file = open('events.csv', mode='w')
        events_writer = csv.writer(events_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        olympics_file = open('olympics.csv', mode='w')
        olympics_writer = csv.writer(olympics_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        appearance_file = open('appearance.csv', mode='w')
        appearance_writer = csv.writer(appearance_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)



        athletes = {}
        event_id = 1
        olympics_id = 1
        events = {}
        olympics = {}
        next(athlete_events_data)

        '''
        athletes_writer.writerow(['ID', 'First Name', 'Last Name'])
        events_writer.writerow(['ID','Sport','Event'])
        olympics_writer.writerow(['ID','Year', 'Season', 'City'])
        appearance_writer.writerow(['Athlete ID','Event ID','Olympic ID','Sex', 'Age', 'Height', 'Weight', 'Team', 'NOC','Medal'])'''

        for row in athlete_events_data:
            athlete_id, name, sex, age, height, weight, team, noc, games, year, season, city ,sport, event, medal = row
            athlete_id = int(athlete_id)
            if not age == 'NA':
                age = int(age)
            if not height =='NA':
                height = int(height)
            if not weight == 'NA':
                weight = float(weight)
            year = int(year)
            if athlete_id not in athletes.keys():
                name = name.split(' ')
                first_name = name[0]
                if len(name)>1:
                    last_name = ''
                    for i in name[1:]:
                        last_name += i+' '
                else:
                    last_name = 'NA'
                athletes[athlete_id]=[first_name,last_name]
                athletes_writer.writerow([athlete_id, first_name, last_name])
            if event not in events.keys():
                events[event] = event_id
                events_writer.writerow([event_id, sport, event])
                event_id += 1
            if games not in olympics.keys():
                olympics[games] = olympics_id
                olympics_writer.writerow([olympics_id,year, season, city])
                olympics_id += 1

            appearance_writer.writerow([athlete_id,events[event],olympics[games],sex, age, height, weight, team, noc,medal])

        athletes_file.close()
        events_file.close()
        olympics_file.close()
        appearance_file.close()

    with open('noc_regions.csv', 'r') as noc_regions:
        noc_regions_data = csv.reader(noc_regions)

        noc_countries_file = open('noc_countries.csv', mode='w')
        noc_countries_writer = csv.writer(noc_countries_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        next(noc_regions_data)
        for row in noc_regions_data:
            noc_countries_writer.writerow([row[0], row[1]])

        noc_countries_file.close()


main()
