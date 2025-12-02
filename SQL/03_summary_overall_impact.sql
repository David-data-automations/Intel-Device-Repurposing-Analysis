-- TASK 2B
-- Total devices, avg age, avg energy savings, total CO₂ saved (tons)

WITH joined_data AS (
    SELECT
        model_year,
        (2024 - model_year) AS device_age,
        500 AS energy_savings_yr,      -- placeholder (per dataset design)
        50 AS co2_saved_kg_yr          -- placeholder (per dataset design)
    FROM intel.device_data
)
SELECT
    COUNT(*) AS total_devices_repurposed,
    AVG(device_age) AS avg_device_age,
    AVG(energy_savings_yr) AS avg_energy_savings_kwh,
    SUM(co2_saved_kg_yr) / 1000 AS total_co2_saved_tons
FROM joined_data;
