SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT id) as uniq,
FROM 
    STV2025021816__STAGING.users
UNION ALL 
SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT id) as uniq,
FROM 
    STV2025021816__STAGING.groups
UNION ALL
SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT id) as uniq,
FROM
    STV2025021816__STAGING.dialogs