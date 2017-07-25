CREATE TABLE Startup(
    Index int primary key	not null,
	Location int, 	
    Index_Year int,
    Breakdown char(100),
    Characteristic char(100),
    Rank int, 
    z_rate real, 
    z_oppshare real, 
    z_startup_den real,
    norm_rate real,
    norm_opp real,
    norm_density real,
    year_CPS int, 
    OppShare_New_Entrp real,
    Rate_New_Entrp real, 
    startup_index real, 
    year_BDS int, 
    startup_density real, 
    Composition_of_New_Entrp real,
    rank_last_y int, 
	rank_diff int, 
    index_last_y real,
    index_diff real,
    Location_name char(100),
    Category char(100),
    OppShare_New_Entrp_web real,
    Rate_New_Entrp_web real, 
    location_category char(200),
    index_diff_text char(200),
	dataset char(200));


COPY Startup 
FROM 'C:\\Users\\jehun\\Documents\\Mathfreak\\Work\\DreamClarity\\StartupData\\Startup_Activity.csv' 
WITH DELIMITER ','
CSV HEADER;

-------------------------------------------------------------------------------
select location, location_name, category
from public.startup
group by location, location_name, category

select location, index_year, location_name, breakdown, characteristic, dataset
from public.startup
where breakdown is not null


