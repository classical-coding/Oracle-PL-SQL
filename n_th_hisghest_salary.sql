select * from (
    select  e.*, 
            dense_rank() over (order by sal desc) r 
    from scott.emp e 
) where r=2; --for 2nd hioghest salary

select * from (
    select  e.*, 
            dense_rank() over (order by sal desc) r 
    from scott.emp e 
) where r=9; --for 9th hioghest salary

select * 
from scott.emp e 
order by e.sal desc 
offset 1 rows 
fetch next 1 rows 
with ties; -- for 2nd highest salary