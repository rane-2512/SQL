select max(balance) from accounts
group by accid
limit 4 offset 1;
