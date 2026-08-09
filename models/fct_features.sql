with cleaned_data as (
    select * from {{ ref('stg_raw_logs') }}
)
select
    duration,
    src_bytes,
    dst_bytes,
    case when protocol_type = 'tcp' then 1 else 0 end as is_tcp,
    case when protocol_type = 'udp' then 1 else 0 end as is_udp,
    case when service = 'http' then 1 else 0 end as is_http,
    case when service = 'smtp' then 1 else 0 end as is_smtp,
    case when flag = 'SF' then 1 else 0 end as is_flag_sf,
    is_attack
from cleaned_data