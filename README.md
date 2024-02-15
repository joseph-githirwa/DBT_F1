# Formula 1 DBT Project

## Overview
This DBT project utilizes the Formula 1 Ergast dataset from [ergast.com](https://ergast.com/mrd/), which provides details on Formula 1 races and qualifying sessions dating back to 1950. The project is designed to transform and analyze this data within a PostgreSQL database using DBT (Data Build Tool).

## Project Structure
The project consists of two main schemas within the PostgreSQL database:
- **RAW Schema**: Contains the raw, unmodified data ingested from the Ergast dataset using the seed feature in DBT.
- **DEV Schema**: Contains cleaned and standardized data, along with fact and dimension tables derived from the source views.

## Features
- **Custom Macros**: Custom-made DBT macros are used to clean and standardize the data in the DEV schema. This includes handling inconsistent data columns and converting text to integers, while properly handling null values (stored as "\N" in the dataset).
![Project Macros](images/DBT%20Macros.jpg)
- **Source Views**: Source views prefixed with "src" are created in the DEV schema to map to the data in the RAW schema. These views represent the cleaned and standardized version of the raw data.
- **Fact and Dimension Tables**: Fact tables (prefixed with "fct") and dimension tables (prefixed with "dim") are derived from the source views in the DEV schema. These tables provide structured and organized data for analysis.
<img src="images/DBT%20Lineage%20Graph.jpg" alt="Project Lineage" width="800">

- **Documentation**: DBT models and their columns have been thoroughly documented, making it fully accessible to end users through DBT's inbuilt document server. Alternatively, this documentation can be ingested by a third-party data catalog.
![Project Documentation](images/DBT%20Model%20Documentation.jpg)
## Usage
To utilize this DBT project, follow these steps:
1. Ensure PostgreSQL is installed and running.
2. Clone this repository to your local machine.
3. Configure your DBT profiles.yml file to connect to your PostgreSQL database.
4. Run `dbt seed` to ingest the raw data into the RAW schema.
5. Run `dbt run` to execute the transformations and create the cleaned and standardized data in the DEV schema.
6. Analyze the data using the generated fact and dimension tables.

## Future Enhancements
- Add telemetry and more detailed race data from the FastF1 API.
- Add additional transformations and analyses to derive more insights from the Formula 1 dataset.
- Expand the project to include more datasets or integrate with external APIs for enriched analysis.
