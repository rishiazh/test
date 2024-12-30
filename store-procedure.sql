use threepm;
delimiter &&
create procedure sample_proce()
begin
select count(*) from employees;
end &&

call sample_proce &&

