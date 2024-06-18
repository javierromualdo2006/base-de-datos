1)INSERT INTO regions(region_name, region_id)
  VALUES ("africa", "5"),
         ("Middle east", "6");    

2)UPDATE countries 
  SET region_id = "5"
  WHERE country_name = "Australia" or country_name = "Egypt" or country_name = "Israel" or country_name = "India" 

  UPDATE countries 
  SET region_id = "6"
  WHERE region_id = "4"   

3)DELETE FROM regions WHERE region_id = 4 

4)INSERT INTO countries(country_id, country_name, region_id)
  VALUES ("ARM" ,"Armenia", "6"),
         ("QA" ,"Qatar", "6"),    
		 ("UG" ,"Uganda", "5"),
         ("MA" ,"Marruecos", "5");  

5)INSERT INTO regions(region_name, region_id)
  VALUES ("Middle east and africa", "4"); 

6)UPDATE countries 
  SET region_id = "4"
  WHERE region_id in (SELECT region_id FROM countries WHERE region_id = "5" or region_id = "6" )