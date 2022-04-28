SELECT companies.id AS company_id, 
    companies.name AS company_name, 
    users.id AS user_id, 
    users.email, 
    users.first_name, 
    users.last_name, 
    users.title, 
    companies.phone_number, 
    campaigns.name AS campaign_name, 
    promotion_interactions.interaction_type, 
    promotion_interactions.interaction_timestamp AS interaction_timestamp 
FROM promotion_interactions 
    JOIN companies ON companies.id = company_id 
    JOIN campaigns ON campaigns.id = campaign_id 
    JOIN users ON users.id = user_id 
WHERE promotion_interactions.interaction_type = 'interested' 
    OR promotion_interactions.interaction_type = 'not interested' 
ORDER BY promotion_interactions.interaction_timestamp ASC;
