-- https://wowwiki-archive.fandom.com/wiki/Spell_power_coefficient?oldid=1549180
-- https://wowpedia.fandom.com/wiki/Spell_power?oldid=1576621
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(17, 0.3, 0, 0, 0, 'Priest - Power Word: Shield'), -- 0.1 classic
(543, 0.3, 0, 0, 0, 'Mage - Fire Ward'), -- 0.1 classic - https://web.archive.org/web/20080304051324/http://elitistjerks.com:80/f31/t16979-mage_tc_after_2_3_a/
(1463, 0.5, 0, 0, 0, 'Mage - Mana Shield'), -- 0.1 classic https://wowpedia.fandom.com/wiki/Mana_Shield_(original)?direction=prev&oldid=1350187
(6143, 0.3, 0, 0, 0, 'Mage - Frost Ward'), -- 0.1 classic - https://web.archive.org/web/20080304051324/http://elitistjerks.com:80/f31/t16979-mage_tc_after_2_3_a/
(6229, 0.3, 0, 0, 0, 'Warlock - Shadow Ward'), -- 0.1 classic
(11426, 0.3, 0, 0, 0, 'Mage - Ice Barrier'); -- 0.1 classic

