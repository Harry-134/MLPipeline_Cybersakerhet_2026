with source_data as (
    select
        duration,
        protocol_type,
        service,
        flag,
        src_bytes,
        dst_bytes,
        label
    from {{ source('raw_data', 'TRAINDATA') }}
)
select
    duration,
    protocol_type,
    service,
    flag,
    src_bytes,
    dst_bytes,
    case when label = 'normal' then 0 else 1 end as is_attack
from source_data