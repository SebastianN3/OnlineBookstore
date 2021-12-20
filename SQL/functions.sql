-- Calculate sales 
-- The expenditures column is multiplied by 0.01 to turn the percentage to decimal
CREATE FUNCTION calculate_sales_vs_expenditures()
    RETURNS table (
        sales numeric,
        expenditures numeric)
    LANGUAGE plpgsql
AS
$$
    BEGIN
        RETURN QUERY 
            SELECT SUM(calculated_sales), SUM(calculated_expenditures)
            FROM (SELECT number_sold * price AS calculated_sales, number_sold * price * publisher_percentage * 0.01 AS calculated_expenditures FROM supplies) AS sales_vs_expenditures;
END;
$$
