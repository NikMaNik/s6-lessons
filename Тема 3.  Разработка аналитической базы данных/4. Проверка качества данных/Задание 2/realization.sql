SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT id) as uniq,
    'users' as dataset
FROM 
    STV2025021816__STAGING.users
UNION ALL 
SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT id) as uniq,
    'groups' as dataset
FROM 
    STV2025021816__STAGING.groups
UNION ALL
SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT message_id) as uniq,
    'dialogs' as dataset
FROM
    STV2025021816__STAGING.dialogs;