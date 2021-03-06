SELECT seller_state, AVG(review_score) as avg_score
FROM sellers NATURAL JOIN (SELECT * FROM order_items GROUP BY order_id) as order_items NATURAL JOIN (SELECT * FROM order_reviews GROUP BY order_id) as order_reviews
GROUP BY seller_state
ORDER BY avg_score DESC