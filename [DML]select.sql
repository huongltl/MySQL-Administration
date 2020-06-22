USE mavenfuzzyfactorymini;

-- GROUP BY
#重複したデータを除外してこのテーブルから website_session_id カラムの値を取得してみます。
SELECT 
	website_session_id,
    COUNT(website_session_id) AS `count`
FROM website_pageviews_non_normalized
GROUP BY website_session_id
;

#存在してるテーブルから新しいテーブルを作成
CREATE TABLE website_session_id
SELECT 
	website_session_id,
    COUNT(website_session_id) AS `count`
FROM website_pageviews_non_normalized
GROUP BY website_session_id
;

-- DISTINCT
#重複したデータを除外してこのテーブルから website_session_id カラムの値を取得してみます。
SELECT DISTINCT 
	website_session_id
FROM website_pageviews_non_normalized
;

#存在してるテーブルから新しいテーブルを作成
CREATE TABLE website_session_normalized
SELECT DISTINCT 
	website_session_id,
    session_created_at,
    user_id,
    is_repeat_session
FROM website_pageviews_non_normalized
;




