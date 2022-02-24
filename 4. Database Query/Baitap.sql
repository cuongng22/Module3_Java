use qlsv;

select * from subject 
where Credit = (select max(Credit) from subject);

select * from subject 
where subid in ((select subid from mark 
where max(mark)));

select student.studentid, student.studentname, avg(mark)"diemtb"
from student join mark on student.studentid = mark.studentid
group by student.studentid
order by avg(mark);
