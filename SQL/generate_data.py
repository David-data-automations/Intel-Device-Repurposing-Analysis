import pandas as pd
import numpy as np

np.random.seed(42)

# Number of devices
n = 150

# ---- DEVICE DATA ----
device_ids = np.arange(1, n+1)

device_types = np.random.choice(["laptop", "desktop"], size=n, p=[0.65, 0.35])
model_years = np.random.choice(np.arange(2014, 2024), size=n)

countries = np.random.choice(
    ["USA", "China", "Germany", "India", "Mexico", "UK", "Canada"],
    size=n
)

device_data = pd.DataFrame({
    "device_id": device_ids,
    "device_type": device_types,
    "model_year": model_years,
    "country": countries
})

# ---- IMPACT DATA ----
impact_ids = np.arange(1001, 1001+n)

usage_purpose = np.random.choice(
    ["education", "nonprofit", "refurbished_resale", "community_center"],
    size=n
)

power_consumption = np.round(np.random.uniform(25, 150, size=n), 2)

energy_savings_yr = np.round(np.random.uniform(150, 650, size=n), 2)

co2_saved_kg_yr = np.round(energy_savings_yr * np.random.uniform(0.08, 0.12, size=n), 2)

recycling_rate = np.round(np.random.uniform(0.40, 0.95, size=n), 2)

regions = np.random.choice(
    ["North America", "Europe", "Asia-Pacific", "Latin America"],
    size=n
)

impact_data = pd.DataFrame({
    "impact_id": impact_ids,
    "device_id": device_ids,
    "usage_purpose": usage_purpose,
    "power_consumption": power_consumption,
    "energy_savings_yr": energy_savings_yr,
    "co2_saved_kg_yr": co2_saved_kg_yr,
    "recycling_rate": recycling_rate,
    "region": regions
})

# ---- EXPORT ----
device_data.to_csv("device_data.csv", index=False)
impact_data.to_csv("impact_data.csv", index=False)

print("✔ Dummy data successfully generated:")
print(" - device_data.csv")
print(" - impact_data.csv")
