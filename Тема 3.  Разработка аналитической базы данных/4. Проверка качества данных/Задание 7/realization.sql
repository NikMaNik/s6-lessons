(SELECT count(1), 'missing group admin info' as info
FROM STV2025021816__STAGING.groups g left join STV2025021816__STAGING.users as u ON g.admin_id = u.id
WHERE u.id is NuLL)
UNION ALL
(SELECT COUNT(1), 'missing sender info'
FROM STV2025021816__STAGING.dialogs d  left join STV2025021816__STAGING.users as u ON d.message_from = u.id
WHERE u.id is NULL)
UNION ALL
(SELECT COUNT(1), 'missing receiver info'
FROM STV2025021816__STAGING.dialogs d left join STV2025021816__STAGING.users as u ON d.message_to = u.id
WHERE u.id is NULL)
UNION ALL 
(SELECT COUNT(1), 'norm receiver info'
FROM STV2025021816__STAGING.dialogs d left join STV2025021816__STAGING.users as u ON d.message_to = u.id
WHERE u.id is NOT NULL);