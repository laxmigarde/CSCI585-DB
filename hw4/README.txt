Laxmi Garde
HW4 - CSCI 585 Database Systems

MongoDB Atlas used for the homework assignment 4.
Database Name: HW4DB
Collections in the database HW4DB:
- HW3Data (comprises of the 13 Locations data from HW3)
- NPS (comprises of the features array data from https://www.nps.gov/lib/npmap.js/4.0.0/examples/data/national-parks.geojson)
- Spiro (comprises of the Spirograph points from HW3)


Q1. Write a query to output locations (documents) with a popularity of >=50 from HW3Data. Take a screenshot of the query and results. 

Query used:
Filter used on MongoDB : {"popularity": {$gte:50}}
Actual query: db.HW3Data.find({"popularity": {$gte:50}})

Screenshots available with the names as follows: Q1.png, Q1_result.png, Q1_result_contd.

========================================

Q2. Visualize your 13 locations from HW3Data collection, take a screenshot using Charts.

Datasource: HW4DB.HW3Data
Chart Type: Geospatial - Scatter Plot
Screenshot available with the name: Q2.png

========================================

Q3. Write a query in the chart area where you would specify a bounding box (lower-left location, upper-right location) to display just the northern half of your 13 locations. Take a screenshot of the query and the result.

Datasource: HW4DB.HW3Data
Chart Type: Scatter chart
Screenshot available with the name: Q3.png


=======================================

Q4. Plot Sprigraph data on Chart. Take a screenshot.

Datasource: HW4DB.Spiro
Chart Type: Geospatial - Scatter Plot

Screenshot available with the name: Q4.png, Q4_1.png, Q4_2.png(to show that the spirograph points don't intersect)

=======================================


Q5. National Park data on a map of the entire US. Write a query to output just the locations that are contained within an equilateral bounding triangle that you'd specify (as best possible). Take a screenshot.

Datasource: HW4DB.NPS
Chart Type: Geospatial - Scatter Plot
Query used on the map/chart: 
{geometry: {
       $geoWithin: { $polygon: [ [  -116.15907084356105 , 33.98096522850808 ], [-107.89027837388127, 34.91493770120391], [ -112.49490593840095 , 41.63074261463882 ] ] }
}}

Screenshot available with the name: Q5.png, Q5_1.png, Q5_2.png(plot for all NPS data screenshot), Q5_triangle.png

=======================================

Q6. Visualize all 13 locations again using Scatter Plot, using this Scatter chart. Use 'Size' aggregation encoding channel to vary the displayed location size, based on the 'popularity' key you created. Add 'locationType' to the HW3Data with values such as 'home', 'library'. 'restaurant' etc. - then use the 'Color' encoding channel together with this key, to color the locations according to type.


Datasource: HW4DB.HW3Data
Chart Type: Geospatial - Scatter Plot

Screenshot available with the names: Q6.png, Q6_1.png(with locationType)

=======================================






