{% snapshot scd_raw_hosts %}

    {{
        config(
        target_schema='datalake',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at',
        invalidate_hard_deletes=True
        )
    }}

select * FROM {{ source('airbnb', 'raw_hosts') }}

{% endsnapshot %}