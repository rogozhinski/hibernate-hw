drop sequence if exists resume_id_seq cascade;
drop table if exists resume cascade;

create sequence resume_id_seq
  minvalue 1
  start with 1
  increment by 10;

create table resume (
  id int not null default nextval('resume_id_seq') primary key,
  description text
);
