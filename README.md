This project uses snowflake as a data warehouse and dbt(data build tool) as a tranformation tool to transform raw data into consumable data.

Snowflake data warehouse consists 3 layers.
1. Landing Layer - Holds raw data from source system without any tranformations.
2. Datalake Layer - Holds tranformed data and is used as a datalake.
3. Consumption Layer - Holds dimension and fact tables which can be consumed by BI tools and other data teams.

