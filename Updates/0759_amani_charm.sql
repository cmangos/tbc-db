-- add restriction for Amani Charm buffs
DELETE FROM spell_area WHERE area=3805 AND spell IN (43822,43816,43820,43818);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(43822, 3805, 0, 0, 0, 0, 0, 0, 0, 0), -- Charm of the Raging Defender
(43816, 3805, 0, 0, 0, 0, 0, 0, 0, 0), -- Charm of the Bloodletter
(43820, 3805, 0, 0, 0, 0, 0, 0, 0, 0), -- Charm of the Witch Doctor
(43818, 3805, 0, 0, 0, 0, 0, 0, 0, 0); -- Charm of Mighty Mojo


