## About

As a proof-of-concept, I mashed up my colleague Ari Lamstein's [choroplethr](https://github.com/trulia/choropletr) package with the [Shiny](http://www.rstudio.com/shiny/) web framework to create an "explorable" choropleth map.  

This demo uses US population data from the American Community Survery. The functionality allows for drilling down through levels of detail (state, county, and zip), and for toggling between viewing the entire US or a specific state. Because choropleths become difficult to read at county and zip levels, this allows for easy point-and-click exploring of the data.  

## How to run

The quickest way to run the code is directly from github. Install and load R's Shiny package, and run:

    runUrl("https://github.com/mdinauta/acs-explorer/archive/master.zip")
