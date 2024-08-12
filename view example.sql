CREATE VIEW view_sales AS
SELECT
    st.transaction_id,
    st.transaction_date,
    st.transaction_time,
    p.product_name,
    st.quantity,
    st.price
FROM
    sales_transactions AS st
JOIN
    product p ON st.product_id = p.product_id;
