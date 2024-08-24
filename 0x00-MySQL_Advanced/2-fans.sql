-- This query ranks country origins of bands based on the number of non-unique fans.
-- It groups bands by their country of origin and sums up their fans.
-- The result is ordered in descending order by the total number of fans per country.

SELECT
    origin,
    SUM(fans) AS nb_fans,
FROM 
    metal_bannds
GROUP BY
    origin
ORDER BY
    nb_fans DESC;
