-- Quest 'The Grimtotem Weapon'
-- Add conditions
DELETE FROM conditions WHERE condition_entry = '4001';
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `comments`) VALUES ('4001', '1', '42454', 'Captured Totem Quest Credit only if Crocolisk has Captured Totem Aura at Death');