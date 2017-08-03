create or replace procedure hello is 
begin
dbms_output.put_line('hello world');
end;
.
/

++++++++++++++++++++++
begin
hello();
end;
.
/
+++++++++++++++++++++++++++++++++++++++++++++++++++++
create or replace procedure dispname(name varchar)is
begin
dbms_output.put_line('name is '||name);
end;
.
/
++++++++++++++++++++++++++++++++++++++++++++++++++++++
create or replace procedure m(n in out number)is
begin
n:=n*2;
dbms_output.put_line('number  is '||n);
end;
.
/

+++++++++++++
declare 
r  number;
begin
r:=7;
dbms_output.put_line('before calling r is '||r);
m(r);
dbms_output.put_line('after calling r is '||r);
end;
.