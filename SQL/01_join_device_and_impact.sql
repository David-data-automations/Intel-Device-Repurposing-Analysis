-- TASK 1A/B
-- Join intel.device_data and intel.impact_data on device_id
-- Add device_age = 2024 - model_year

SELECT
    d.device_id,
    d.device_type,
    d.model_year,
    (2024 - d.model_year) AS device_age,
    i.impact_id,
    i.usage_purpose,
    i.power_consumption,
    i.energy_savings_yr,
    i.co2_saved_kg_yr,
    i.recycling_rate,
    i.region
FROM intel.device_data AS d
JOIN intel.impact_data AS i
    ON d.device_id = i.device_id
ORDER BY device_age DESC;
