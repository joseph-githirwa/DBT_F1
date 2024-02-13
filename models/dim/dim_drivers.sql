SELECT
    driver_id,
    driver_ref,
    {{ nan_to_null('number') }} number,
    code,
    forename,
    surname,
    forename || ' ' || surname full_name,
    dob,
    nationality,
    url,
    driver_name,
    driver_number
FROM
    {{ ref("src_drivers")}}