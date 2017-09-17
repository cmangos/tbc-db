-- Fix wrong faction causing Bleeding Hollow Tormentors to cast fear on their own pet
-- Source for faction is wotlk-db
UPDATE creature_template SET FactionAlliance=1662, FactionHorde=1662 WHERE entry=19640; -- Bleeding Hollow Riding Worg
