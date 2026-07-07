CREATE EXTENSION IF NOT EXISTS "pgcrypto";

INSERT INTO hotel_bookings (
    id,
    org_id,
    hotel_id,
    city,
    checkin_date,
    checkout_date,
    amount,
    status,
    created_at
)
SELECT
    gen_random_uuid(),

    CASE (gs % 3)
        WHEN 0 THEN '11111111-1111-1111-1111-111111111111'::uuid
        WHEN 1 THEN '22222222-2222-2222-2222-222222222222'::uuid
        ELSE '33333333-3333-3333-3333-333333333333'::uuid
    END,

    'HOTEL-' || gs,

    (ARRAY['delhi','mumbai','pune','bangalore','hyderabad'])[1 + floor(random()*5)::int],

    CURRENT_DATE + (random()*30)::int,

    CURRENT_DATE + (random()*30)::int + 2,

    round((1000 + random()*9000)::numeric,2),

    (ARRAY['CONFIRMED','PENDING','CANCELLED','COMPLETED'])[1 + floor(random()*4)::int],

    NOW() - (random()*30 || ' days')::interval

FROM generate_series(1,100) gs;