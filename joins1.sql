-- customer wise total balance
select sum(a.balance),c.cid from accounts a
join customers c
on c.cid=a.cid
group by c.cid;
