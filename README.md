# UPH_OR_2018_AIR_TRANSPORTATION

AIRPLANE LOCATOR (AIR TRANSPORTATION) =
Tujuan dari pembuatan program ini adalah untuk melacak lokasi pesawat secara livestream menggunakan shiny.

library yang kami gunakan adalah :
- shiny
- leaflet
The Leaflet package includes powerful and convenient features for integrating with Shiny applications.
Most Shiny output widgets are incorporated into an app by including an output (e.g. plotOutput) for the widget in the UI definition, and using a render function (e.g. renderPlot) in the server function. Leaflet maps are no different; in the UI you call leafletOutput, and on the server side you assign a renderLeaflet call to the output. Inside the renderLeaflet expression, you return a Leaflet map object.
- jsonlite
The jsonlite package is a JSON parser/generator optimized for the web. Its main strength is that it implements a bidirectional mapping between JSON data and the most important R data types. Thereby we can convert between R objects and JSON without loss of type or information, and without the need for any manual data munging. This is ideal for interacting with web APIs, or to build pipelines where data structures seamlessly flow in and out of R using JSON.
- shinyjs
shinyjs lets you perform common useful JavaScript operations in Shiny apps that will greatly improve your apps without having to know any JavaScript.
- sqldf
The sqldf() function is typically passed a single argument which is an SQL select statement where the table names are ordinary R data frame names. sqldf() transparently sets up a database, imports the data frames into that database, performs the SQL select or other statement and returns the result using a heuristic to determine which class to assign to each column of the returned data frame.

Untuk interface :
- Arahkan mouse ke icon pesawat untuk melihat detail pesawat
- Klik icon pesawat untuk melihat model pesawat
- Drag map untuk memindahkan posisi layar
- Tekan tombol + untuk zoom in
- Tekan tombol - untuk zoom out

screenshot :

![caption](link foto)

