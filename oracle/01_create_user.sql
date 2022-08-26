-- alter session set container=test;
alter session set "_ORACLE_SCRIPT"=true;

CREATE TABLESPACE JIRADB DATAFILE '/opt/oracle/product/19c/dbhome_1/JIRA.dbf' SIZE 400M AUTOEXTEND ON MAXSIZE UNLIMITED;

CREATE user jiradbuser identified BY jiradbpassword DEFAULT tablespace JIRADB quota UNLIMITED ON JIRADB;

grant connect to jiradbuser;
grant resource to jiradbuser;
grant create table to jiradbuser;
grant create sequence to jiradbuser;
grant create trigger to jiradbuser;