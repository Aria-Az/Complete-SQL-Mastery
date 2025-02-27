-- Index Maintenance

-- Problems: Duplicate Indexes, Redundant Indexes

-- Duplicate Indexes : don't create duplicate indexes, always check existing indexes before creating a new one
--  Redundant Indexes : if we have a index like (A,B) then a index like (A) is redundant, but (B,A) or (B) are not redundant
