GRANT 
  SELECT, INSERT, UPDATE, DELETE, LOCK TABLES, ALTER, CREATE, DROP, INDEX, GRANT OPTION 
  ON specify.* TO 'specify-it-user' ;

GRANT 
  SELECT, INSERT, UPDATE, DELETE, LOCK TABLES 
  ON specify.* TO 'specify-master-user' IDENTIFIED BY "MasterUserPassword";