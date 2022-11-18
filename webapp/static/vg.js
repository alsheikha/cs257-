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
        let tableBody = '<tr>'
        + '<td>' + 'Rank' + '</td>'
        + '<td>' + 'Name' + '</td>'
        + '<td>' + 'Platform' + '</td>'
        + '<td>' + 'Year' + '</td>'
        + '<td>' + 'Genre' + '</td>'
        + '<td>' + 'Publisher' + '</td>'
        + '<td>' + 'Global Sales (millions)' + '</td>'
        + '</tr>\n';
        for (let k = 0; k < topgames.length; k++) {
            let game = topgames[k];
            tableBody += '<tr>'
                            + '<td>' + game['Rank'] + '</td>'
                            + '<td>' + game['Name'] + '</td>'
                            + '<td>' + game['Platform'] + '</td>'
                            + '<td>' + game['Year'] + '</td>'
                            + '<td>' + game['Genre'] + '</td>'
                            + '<td>' + game['Publisher'] + '</td>'
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
    let url = getAPIBaseURL() + '/publishers/';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(publishers) {
        // Add the <option> elements to the <select> element
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

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}


function onSelectionChanged() {

    let element = document.getElementById('platform_selector');
  
    let platformID = element.value; 

    let element2 = document.getElementById('genre_selector');

    let genreID = element2.value;   

    let element3 = document.getElementById('publisher_selector');
    
    let publisherID = element3.value; 
    
    
    let url = getAPIBaseURL() + '/' + platformID + '/' +  genreID + '/'+  publisherID ;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(topgames) {
        let tableBody = '<tr>'
        + '<td>' + 'Rank' + '</td>'
        + '<td>' + 'Name' + '</td>';
        if (platformID == '1'){tableBody += '<td>' + 'Platform' + '</td>';}
        tableBody +=
         '<td>' + 'Year' + '</td>';
         if (genreID == '1'){ tableBody += '<td>' + 'Genre' + '</td>';}
         if (publisherID == '1'){tableBody += '<td>' + 'Publisher' + '</td>';}
         tableBody+=
         '<td>' + 'Global Sales (millions)' + '</td>'
        + '</tr>\n';
        for (let k = 0; k < topgames.length; k++) {
            let game = topgames[k];
            tableBody += '<tr>'
                            + '<td>' + game['Rank'] + '</td>'
                            + '<td>' + game['Name'] + '</td>';
                            if (platformID == '1'){tableBody += '<td>' + game['Platform'] + '</td>';}
                            tableBody +=
                             '<td>' + game['Year'] + '</td>';
                            if (genreID == '1'){tableBody += '<td>' + game['Genre'] + '</td>';}
                            if (publisherID == '1'){tableBody += '<td>' + game['Publisher'] + '</td>';}
                             tableBody +=
                             '<td>' + game['Sales'] + '</td>'
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



function loadAuthorsSelector() {
    let url = getAPIBaseURL() + '/authors/';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(authors) {
        // Add the <option> elements to the <select> element
        let selectorBody = '';
        for (let k = 0; k < authors.length; k++) {
            let author = authors[k];
            selectorBody += '<option value="' + author['id'] + '">'
                                + author['surname'] + ', ' + author['given_name']
                                + '</option>\n';
        }

        let selector = document.getElementById('author_selector');
        if (selector) {
            selector.innerHTML = selectorBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function onAuthorsSelectionChanged() {
    let element = document.getElementById('author_selector');
    if (!element) {
        return;
    }
    let authorID = element.value; 

    let url = getAPIBaseURL() + '/books/author/' + authorID;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(books) {
        let tableBody = '';
        for (let k = 0; k < books.length; k++) {
            let book = books[k];
            tableBody += '<tr>'
                            + '<td>' + book['title'] + '</td>'
                            + '<td>' + book['publication_year'] + '</td>'
                            + '</tr>\n';
        }

        // Put the table body we just built inside the table that's already on the page.
        let booksTable = document.getElementById('books_table');
        if (booksTable) {
            booksTable.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}

