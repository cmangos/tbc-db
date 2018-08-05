-- ==============================
-- Creature Health and Mana Fixes
-- ==============================
UPDATE creature SET curhealth=0 WHERE id NOT IN (16483,16971,18708,20657,20869,21586); -- Exclude creatures that start at lower HP
UPDATE creature SET curmana=0;

