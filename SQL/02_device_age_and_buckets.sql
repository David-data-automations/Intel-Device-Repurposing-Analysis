-- TASK 1D
-- Create device_age and bucket into: newer, mid-age, older.

SELECT
    model_year,
    (2024 - model_year) AS device_age,
    CASE
        WHEN (2024 - model_year) <= 3 THEN 'newer'
        WHEN (2024 - model_year) <= 6 THEN 'mid-age'
        ELSE 'older'
    END AS device_age_bucket
FROM intel.device_data
ORDER BY device_age DESC;
