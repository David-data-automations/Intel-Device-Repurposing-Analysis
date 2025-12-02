-- TASK 3C
-- Impact grouped by device_age_bucket

WITH joined_data AS (
    SELECT
        (2024 - d.model_year) AS device_age,
        CASE
            WHEN (2024 - d.model_year) <= 3 THEN 'newer'
            WHEN (2024 - d.model_year) <= 6 THEN 'mid-age'
            ELSE 'older'
        END AS device_age_bucket,
        500 AS energy_savings_yr,
        50 AS co2_saved_kg_yr
    FROM intel.device_data AS d
)
SELECT
    device_age_bucket,
    COUNT(*) AS total_devices,
    AVG(energy_savings_yr) AS avg_energy_savings_kwh,
    AVG(co2_saved_kg_yr) / 1000 AS avg_co2_saved_tons
FROM joined_data
GROUP BY device_age_bucket
ORDER BY
    CASE device_age_bucket
        WHEN 'newer' THEN 1
        WHEN 'mid-age' THEN 2
        WHEN 'older' THEN 3
    END;
