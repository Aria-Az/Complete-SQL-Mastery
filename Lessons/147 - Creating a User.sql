-- Creating a User

CREATE USER john@127.0.0.1;  -- IP address ( the user can only connect from same computer )
CREATE USER john@localhost; -- determines local computer
CREATE USER john@codewithmosh.com; -- domain
CREATE USER john@'%.codewithmosh.com'; -- sub-domain

CREATE USER john IDENTIFIED BY '1234'; -- no restriction, pass is 1234