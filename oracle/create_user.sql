create user jiradbuser identified by admin default tablespace JIRADB quota unlimited on JIRADB;
grant connect to jiradbuser;
grant create table to jiradbuser;
grant create sequence to jiradbuser;
grant create trigger to jiradbuser;