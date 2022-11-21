/*
 * vg.js
 * Amir Al-Sheikh,
 * 17 November 2022
 */

window.onload = initialize;

function initialize() {
    
    loadPlatformSelector();
    loadGenreSelector();
    loadPublisherSelector();
    loadMainTable();
    let element = document.getElementById('platform_selector');
    if (element) {
        element.onchange = onSelectionChanged;
    } 
    let element2 = document.getElementById('genre_selector');
    if (element2) {
        element2.onchange = onSelectionChanged;
    } 
    let element3 = document.getElementById('publisher_selector');
    if (element3) {
        element3.onchange = onSelectionChanged;
    } 
}


// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}


function loadMainTable() {

    let platformID = '1'
    let genreID = '1'
    let publisherID = '1'

   
    let url = getAPIBaseURL() + '/' + platformID + '/' +  genreID + '/'+  publisherID ;
    fetch(url, {method: 'get'})
    .then((response) => response.json())

    .then(function(topgames) {
        let tableBody = '<thead class = "table-active"><tr>'
        + '<th scope  = "col">' + 'Name' + '</th>'
        + '<th scope  = "col">' + 'Rank' + '</th>'
        + '<th scope  = "col">' + 'Platform' + '</th>'
        + '<th scope  = "col">' + 'Year' + '</th>'
        + '<th scope  = "col">' + 'Genre' + '</th>'
        + '<th scope  = "col">' + 'Publisher' + '</th>'
        + '<th scope  = "col">' + 'Global Sales (millions)' + '</th>'
        + '</tr></thead>\n';
        for (let k = 0; k < topgames.length; k++) {
            let game = topgames[k];
            tableBody += '<tr>'
                            + '<td>' + game['Rank'] + '</td>'
                            + '<td><a  class = "link-name" target="_blank" rel="noopener noreferrer"  href="https://en.wikipedia.org/wiki/' + game['Name'] + '">' + game['Name']+'</a>'
                            + '</td>'
                            + '<td><a  class = "link-platform" target="_blank" rel="noopener noreferrer"  href="https://en.wikipedia.org/wiki/' + game['Platform'] + '">' + game['Platform']+'</a>'
                            + '</td>'
                            + '<td>' + game['Year'] + '</td>'
                            + '<td>' + game['Genre'] + '</td>'
                            + '<td><a  class = "link-publisher" target="_blank" rel="noopener noreferrer"  href="https://en.wikipedia.org/wiki/' + game['Publisher'] + '">' + game['Publisher']+'</a>'
                            + '</td>'
                            + '<td>' + game['Sales'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let gamesTable = document.getElementById('vg_table');
        if (gamesTable) {
            gamesTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

function loadPlatformSelector() {
    let url = getAPIBaseURL() + '/platforms/';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(platforms) {
        // Add the <option> elements to the <select> element
        let selectorBody = '<option value=1 ">All Platforms</option>\n';
        for (let k = 0; k < platforms.length; k++) {
            let platform = platforms[k];
            let val = platform['id']+1;
            selectorBody += '<option value="' + val + '">'
                                + platform['platform'] +  '</option>\n';
        }

        let selector = document.getElementById('platform_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function loadGenreSelector() {
    let url = getAPIBaseURL() + '/genres/';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(genres) {
        // Add the <option> elements to the <select> element
        let selectorBody = '<option value=1 ">All Genres</option>\n';
        for (let k = 0; k < genres.length; k++) {
            let genre = genres[k];
            let val = genre['id']+1;
            selectorBody += '<option value="' + val + '">'
                                + genre['genre'] +  '</option>\n';
        }

        let selector = document.getElementById('genre_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function loadPublisherSelector() {

    let url = getAPIBaseURL() + '/publishers/' ;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(publishers) {
        let selectorBody = '<option value=1 ">All Publishers</option>\n';
        for (let k = 0; k < publishers.length; k++) {
            let publisher = publishers[k];
            let val = publisher['id']+1;
            selectorBody += '<option value="' + val + '">'
                                + publisher['publisher'] +  '</option>\n';
        }

        let selector = document.getElementById('publisher_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}


function onSelectionChanged() { //Updates table to reflect selections

    let platformID = document.getElementById('platform_selector').value;
  
    let genreID = document.getElementById('genre_selector').value;

    let publisherID = document.getElementById('publisher_selector').value      
    
    let url = getAPIBaseURL() + '/' + platformID + '/' +  genreID + '/'+  publisherID ;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(topgames) { //Table columns depend on selections
        let tableBody = '<thead class = "table-active"><tr>'
        + '<th>' + 'Rank' + '</th>'
        + '<th>' + 'Name' + '</th>';
        if (platformID == '1'){tableBody += '<th>' + 'Platform' + '</th>';}
        tableBody +=
         '<th>' + 'Year' + '</th>';
         if (genreID == '1'){ tableBody += '<th>' + 'Genre' + '</th>';}
         if (publisherID == '1'){tableBody += '<th>' + 'Publisher' + '</th>';}
         tableBody+=
         '<th>' + 'Global Sales (millions)' + '</th>'
        + '</tr></thead>\n';


        for (let k = 0; k < topgames.length; k++) {
            let game = topgames[k];
            tableBody += '<tr>'
                            + '<td>'+ game['Rank'] + '</td>'
                            + '<td><a class="link-name" href="https://en.wikipedia.org/wiki/' + game['Name'] + '">' + game['Name']+'</a>'
                            + '</td>';
                            if (platformID == '1'){tableBody += '<td><a class="link-platform" href="https://en.wikipedia.org/wiki/' + game['Platform'] + '">' + game['Platform']+'</a>'
                            + '</td>';}
                            tableBody +=
                             '<td>' + game['Year'] + '</td>';
                            if (genreID == '1'){tableBody += '<td>' + game['Genre']  +'</td>';}
                            if (publisherID == '1'){tableBody += '<td><a class="link-publisher" href="https://en.wikipedia.org/wiki/' + game['Publisher'] + '">' + game['Publisher']+'</a>'
                             + '</td>';}
                             tableBody +=
                             '<td>' + game['Sales'] + '</td>'
                            + '</tr>\n';
        }

        let gamesTable = document.getElementById('vg_table');
        if (gamesTable) {
            gamesTable.innerHTML = tableBody;
        }


    })

    .catch(function(error) {
        console.log(error);
    });
}

