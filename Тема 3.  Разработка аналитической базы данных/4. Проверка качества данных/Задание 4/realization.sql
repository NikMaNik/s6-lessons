SELECT 
    min(u.registration_dt) as datestamp,
    'earliest user registration' as info
FROM STV2025021816__STAGING.users as u
UNION ALL
SELECT
    max(u.registration_dt) as datestamp,,
    'latest user registration' as info
FROM STV2025021816__STAGING.users u
UNION ALL
SELECT 
    min(registration_dt) as datestamp,
    'earliest group registration' as info
FROM STV2025021816__STAGING.groups 
UNION ALL
SELECT
    max(registration_dt) as datestamp,
    'latest group registration'as info
FROM STV2025021816__STAGING.groups
UNION ALL
SELECT 
    min(message_ts) as datestamp,
    'earliest dialog message' as info
FROM STV2025021816__STAGING.message 
UNION ALL
SELECT
    max(message_ts) as datestamp,
    'latest dialog message' as info
FROM STV2025021816__STAGING.message