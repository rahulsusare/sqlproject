USE SQLPROJECT;
--  1
--  select * from users;
--  select * from progress;
-- 2
-- SELECT email_domain,COUNT(*)
-- FROM users
-- WHERE email_domain LIKE '%.edu'
-- GROUP BY email_domain
-- ORDER BY COUNT(*) DESC
-- LIMIT 25;

-- SELECT city, COUNT(*)
-- FROM users
-- WHERE email_domain LIKE '%.edu' AND city = 'New York';

-- SELECT mobile_app,COUNT(*)
-- FROM users
-- WHERE mobile_app = 'mobile-user';

-- 3
-- SELECT sign_up_at,strftime('%H', sign_up_at), Count(*)
--  FROM users
-- GROUP BY 2
-- ORDER BY 2;

-- 4
-- SELECT u.email_domain,p.learn_cpp,p.learn_sql,p.
-- learn_html,p.learn_javascript,p.learn_java
-- FROM users u
-- LEFT JOIN progress p
-- ON u.user_id = p.user_id
-- GROUP BY 1
-- ORDER BY 1 ASC;


SELECT u.email_domain,p.learn_cpp,p.learn_sql,p.
learn_html,p.learn_javascript,p.learn_java
FROM users u
LEFT JOIN progress p
ON u.user_id = p.user_id
WHERE u.city ='New York'
GROUP BY 1
ORDER BY 1 ASC;

SELECT u.email_domain,p.learn_cpp,p.learn_sql,p.
learn_html,p.learn_javascript,p.learn_java
FROM users u
LEFT JOIN progress p
ON u.user_id = p.user_id
WHERE u.city ='Chicago'
GROUP BY 1
ORDER BY 1 ASC;