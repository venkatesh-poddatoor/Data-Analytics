SELECT * FROM insurance_claims;

SELECT COUNT(*) AS total_claims
FROM insurance_claims;

SELECT fraud_reported, COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY fraud_reported;

SELECT fraud_reported, AVG(total_claim_amount) AS avg_claim_amount
FROM insurance_claims
GROUP BY fraud_reported;

SELECT incident_state, COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY incident_state
ORDER BY claim_count DESC
LIMIT 5;

SELECT policy_state, AVG(policy_annual_premium) AS avg_premium
FROM insurance_claims
GROUP BY policy_state;

SELECT incident_severity, COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY incident_severity
ORDER BY claim_count DESC;

SELECT auto_make, AVG(total_claim_amount) AS avg_claim_amount
FROM insurance_claims
GROUP BY auto_make
ORDER BY avg_claim_amount DESC
LIMIT 10;

SELECT insured_occupation, COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY insured_occupation
ORDER BY claim_count DESC;

SELECT incident_type, AVG(total_claim_amount) AS avg_claim_amount
FROM insurance_claims
GROUP BY incident_type;

SELECT incident_type,
       SUM(CASE WHEN fraud_reported = 'Y' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS fraud_rate_percent
FROM insurance_claims
GROUP BY incident_type;

SELECT insured_sex, COUNT(*) AS claim_count
FROM insurance_claims
GROUP BY insured_sex;

SELECT collision_type, COUNT(*) AS claim_count
FROM insurance_claims
WHERE collision_type IS NOT NULL AND collision_type <> '?'
GROUP BY collision_type
ORDER BY claim_count DESC;

SELECT CASE 
         WHEN age < 25 THEN 'Under 25'
         WHEN age BETWEEN 25 AND 40 THEN '25-40'
         WHEN age BETWEEN 41 AND 60 THEN '41-60'
         ELSE 'Above 60'
       END AS age_group,
       AVG(total_claim_amount) AS avg_claim_amount
FROM insurance_claims
GROUP BY age_group;

SELECT witnesses,
       COUNT(*) AS total_claims,
       SUM(CASE WHEN fraud_reported = 'Y' THEN 1 ELSE 0 END) AS fraud_claims
FROM insurance_claims
GROUP BY witnesses
ORDER BY witnesses;



