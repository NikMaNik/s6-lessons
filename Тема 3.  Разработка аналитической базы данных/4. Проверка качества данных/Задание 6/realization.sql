SELECT COUNT(*)
FROM STV2025021816__STAGING.groups AS g 
LEFT JOIN STV2025021816__STAGING.users AS u 
ON g.id = u.id
WHERE u.id is Null