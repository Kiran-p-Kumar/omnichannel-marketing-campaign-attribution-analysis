import pandas as pd 

# project folder path 
# Project folder path
project_path = r"C:\Users\HP\Downloads\Data Analytics Projects\Final Projects\Marketing_Campaign_Analysis"

#Read Clened csv 
df = pd.read_csv(
    rf"{project_path}\marketing_campaign_cleaned.csv"
)

print(df.head(5))

#Rename Columns 

df.columns = [
    "campaign_id",
    "company",
    "campaign_type",
    "target_audience",
    "duration",
    "channel_used",
    "conversion_rate",
    "acquistion_cost",
    "roi",
    "location",
    "language",
    "clicks",
    "impression",
    "engagement_score",
    "customer_segment",
    "campaign_date"
]

#Convert Data Types 

df["campaign_id"]= df["campaign_id"].astype(int)
df["duration"]= df["duration"].astype(int)

df["conversion_rate"] = df["conversion_rate"].astype(float)
df["acquistion_cost"] = df["acquistion_cost"].astype(float)

df["roi"] = df["roi"].astype(float)
df["clicks"] = df["clicks"].astype(int)

df["impression"] = df["impression"].astype(int)
df["engagement_score"] = df["engagement_score"].astype(int)

#conver Date Column 
df["campaign_date"] = pd.to_datetime(df["campaign_date"])

#Export final utf-8 inside same folder 

# Export final UTF-8 CSV inside same folder
df.to_csv(
    rf"{project_path}\marketing_campaign_final_utf8.csv",
    index=False,
    encoding="utf-8"
)

print("final utf8 file saved successfully ")