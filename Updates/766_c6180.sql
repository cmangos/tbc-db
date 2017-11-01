-- Defias Raiders are currently faction 15
-- They should be faction 17 (Defias Brotherhood)
UPDATE `creature_template` SET `FactionAlliance`='17', `FactionHorde`='17' WHERE `Entry`='6180';

