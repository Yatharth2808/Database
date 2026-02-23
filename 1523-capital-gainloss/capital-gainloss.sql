# Write your MySQL query statement below
Select stock_name, 
sum(
    Case when operation = 'Sell' then price else (price) * -1 end
) as capital_gain_loss
from Stocks
group by stock_name 