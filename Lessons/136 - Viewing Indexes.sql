-- Viewing Indexes

SHOW INDEXES IN customers;   -- Key_name:PRIMARY -> Clustered Index   Collation:A -> means acsending order  Cardinality : is just an estimate of unique values
-- after below query we get more accurate values
-- idx_state, idx_points -> Secondary Indexes

ANALYZE TABLE customers;

SHOW INDEXES IN orders;   -- one PRIMARY index and 3 secondary indexes for foreign keys

-- also you can see indexes from navigator panel