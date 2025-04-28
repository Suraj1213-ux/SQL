select *from emloyee;

insert into emloyee( names ,position,department,hire_date,salary)

values('Archana Patil','Data Analytics','Data Science','2025-03-17',35000.00),
      ('Suraj Sawant','Full-Stack Developer','Web Developer','2025-03-17',34000.00);

alter table emloyee
rename column name to Names;


Truncate table emloyee;



Truncate table emloyee restart identity;