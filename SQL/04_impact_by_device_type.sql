-- TASK 3A
-- Impact by device_type: laptops vs desktops

WITH joined_data AS (
    SELECT
        d.device_type,
        500 AS energy_savings_yr,
        50 AS co2_saved_kg_yr
    FROM intel.device_data AS d
)
SELECT
    device_type,
    COUNT(*) AS total_devices,
    AVG(energy_savings_yr) AS avg_energy_savings_kwh,
    AVG(co2_saved_kg_yr) / 1000 AS avg_co2_saved_tons
FROM joined_data
GROUP BY device_type
ORDER BY total_devices DESC;
