'''
Amir Al-Sheikh 11/17
Converting video game data to SQL format


WRITING
vgsales.csv: [Rank,Name,Platform_id,Year,Genre_id,Publisher_id,Global_Sales],
platform.csv: [id, platform],
genre.csv [id, genre],
publisher.csv [id, publisher]
'''
import csv

def main():
    #reading file
    with open('vgsales.csv', 'r') as vg:
        vgdata = csv.reader(vg)

        platform_file = open('platform.csv', mode='w')
        platform_writer = csv.writer(platform_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        genre_file = open('genre.csv', mode='w')
        genre_writer = csv.writer(genre_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        publisher_file = open('publisher.csv', mode='w')
        publisher_writer = csv.writer(publisher_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        videogame_file = open('vg.csv', mode='w')
        videogame_writer = csv.writer(videogame_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

        
        platform_id = 1
        genre_id = 1
        publisher_id = 1
        genres = {}
        platforms = {}
        publishers = {}
        next(vgdata)

        for row in vgdata:
            Rank,Name,Platform,Year,Genre,Publisher,NA_Sales,EU_Sales,JP_Sales,Other_Sales,Global_Sales = row
            Rank = int(Rank)
            if Year != 'N/A':
                Year = int(Year)
            else:
                Year = None
            Global_Sales = float(Global_Sales)

            if Platform not in platforms.keys():
                platforms[Platform] = platform_id
                platform_writer.writerow([platform_id, Platform])
                platform_id += 1
            
            if Genre not in genres.keys():
                genres[Genre] = genre_id
                genre_writer.writerow([genre_id, Genre])
                genre_id += 1    

            if Publisher not in publishers.keys():
                publishers[Publisher] = publisher_id
                publisher_writer.writerow([publisher_id, Publisher])
                publisher_id += 1     
            
            videogame_writer.writerow([Rank,Name, platforms[Platform],Year,genres[Genre],publishers[Publisher],Global_Sales])

        platform_file.close()
        genre_file.close()
        publisher_file.close()
        videogame_file.close()
main()