-- Blob Types  (for storing images,videos, PDFs and any binary data ...)

-- TINYBLOB      255b
-- BLOB          65KB
-- MEDIUMBLOB    16MB
-- LONGBLOB      4GB

-- Problems with storing files in a database :
-- increased database size, slower backup, performance problems, more code to read/write images