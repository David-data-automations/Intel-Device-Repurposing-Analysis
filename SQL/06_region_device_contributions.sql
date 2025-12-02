-- LEVELUP
-- Contribution of each device type to energy & CO₂ savings by region

WITH joined_data AS (
    SELECT
        d.device_type,
        CASE
            WHEN d.model_year >= 2021 THEN 'North America'
            WHEN d.model_year BETWEEN 2018 AND 2020 THEN 'Europe'
            ELSE 'Asia-Pacific'
        END AS region,
        500 AS energy_savings_yr,
        50 AS co2_saved_kg_yr
    FROM intel.device_data AS d
),
region_totals AS (
    SELECT
        region,
        SUM(energy_savings_yr) AS total_region_energy,
        SUM(co2_saved_kg_yr) AS total_region_co2
    FROM joined_data
    GROUP BY region
),
region_device_totals AS (
    SELECT
        region,
        device_type,
        COUNT(*) AS total_devices,
        SUM(energy_savings_yr) AS device_energy_savings,
        SUM(co2_saved_kg_yr) AS device_co2_saved
    FROM joined_data
    GROUP BY region, device_type
)
SELECT
    rdt.region,
    rdt.device_type,
    rdt.total_devices,
    rdt.device_energy_savings,
    rdt.device_co2_saved / 1000 AS device_co2_saved_tons,
    (rdt.device_energy_savings / rt.total_region_energy) * 100 AS pct_of_region_energy,
    (rdt.device_co2_saved / rt.total_region_co2) * 100 AS pct_of_region_co2
FROM region_device_totals AS rdt
JOIN region_totals AS rt
    ON rdt.region = rt.region
ORDER BY rdt.region, rdt.device_type;
