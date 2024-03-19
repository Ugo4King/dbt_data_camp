with

    source as (select * from {{ source("staging", "ny_zonal_trip_data") }}),

    renamed as (select locationid, borough, zone, service_zone from source)

select *
from renamed
