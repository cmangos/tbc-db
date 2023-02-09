-- Remove Spell Bonus for s.33090 - Figurine of the Colossus i.27529
-- Should heal for 120/180crit - Closes https://github.com/cmangos/issues/issues/3208
-- https://www.wowhead.com/wotlk/spell=33089/vigilance-of-the-colossus#comments:id=684404 - It can crit
-- https://www.wowhead.com/wotlk/item=27529/figurine-of-the-colossus#comments:id=635464 120flat healing
-- https://youtu.be/72c8YUNusEo?t=190
REPLACE INTO `spell_bonus_data` (`entry`, `comments`) VALUES
(33090, 'Item - Figurine of the Colossus'); -- no bonus

