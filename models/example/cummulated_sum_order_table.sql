select *,
SUM(AMOUNT) OVER (ORDER BY CUSTOMER_ID)
from orders;