
-- This query lists all bands with 'Glam rock' as their main style,
-- ranked by their longevity. Longevity is calculated as the number of years
-- from the year the band was formed to 2022.
SELECT
    band_name,
    (2022 - year_formed) AS longevity
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    longevity DESC;
