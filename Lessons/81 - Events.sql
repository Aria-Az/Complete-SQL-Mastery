-- Events : A task ( or a block of code ) that gets
-- executed according to a schedule

-- With Events we can do Automation

-- SHOW VARIABLES;
SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_scheduler = ON/OFF

DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01'
    -- EVERY 1 HOUR
    -- EVERY 2 DAY
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01' -- both STARTS and ENDS are optional
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;   -- DATEADD(NOW(), INTERVAL -1 YEAR) -- DATESUB(NOW(), INTERVAL 1 YEAR) 
END $$

DELIMITER ;



