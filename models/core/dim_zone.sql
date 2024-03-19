select 
    LocationID,
    Borough,
    zone,
    replace(service_zone, 'Boro','Green') as service_zone
from {{ ref('stg_staging_ny_zonal_trip_data') }}