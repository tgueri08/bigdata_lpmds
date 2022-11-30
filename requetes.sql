--- Q1
SELECT *
FROM source
WHERE sourceId = 29710725217517768;

--- Q2
SELECT sourceId, ra, decl 
FROM source 
WHERE objectId= 433349315283020;

--- Q3 
SELECT sourceId, objectID
FROM source 
WHERE Ra >300 and Ra<359.96 and Decl >-2 and Decl<2;

--- Q4
SELECT objectId, ra, decl 
FROM source 
WHERE scienceCcdExposureId = 453349688988; 

--- Q5
SELECT objectId, count(*)
FROM source 
WHERE Ra >300 and Ra<359.96 and Decl >-2 and Decl<2
Group By objectId;

--- Q6
SELECT objectId, count(*)
FROM source 
group by objectId;
-- Q7
SELECT objectId, count(*)
FROM join object on (source.objectid=object.objectid) 
WHERE Ra >300 and Ra<359.96 and Decl >-2 and Decl<2;
-- Q8
SELECT objectid,sourceid 
FROM source 
WHERE Ra >300 and Ra<359.96 and Decl >-2 and Decl<2 
Order By objectid;