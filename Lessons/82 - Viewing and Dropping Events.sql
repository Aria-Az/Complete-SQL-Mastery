-- Viewing and Dropping Events

-- SHOW EVENTS;
SHOW EVENTS LIKE 'yearly%';

-- Drop :
-- DROP EVENT IF EXISTS yearly_delete_stale_audit_rows

-- ALTER (for changing):
-- DELIMITER $$
-- ALTER EVENT yearly_delete_stale_audit_rows
-- ON SCHEDULE
-- 	-- AT '2019-05-01'
--     -- EVERY 1 HOUR
--     -- EVERY 2 DAY
--     EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01' -- both STARTS and ENDS are optional
-- DO BEGIN
-- 	DELETE FROM payments_audit
--     WHERE action_date < NOW() - INTERVAL 1 YEAR;   -- DATEADD(NOW(), INTERVAL -1 YEAR) -- DATESUB(NOW(), INTERVAL 1 YEAR) 
-- END $$

-- DELIMITER ;

-- we can also use ALTER for temporarily enable or disable an event :
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;    -- DISABLE/ENABLE