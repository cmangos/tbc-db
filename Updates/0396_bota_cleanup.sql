-- DELETE unused dbscripts_on_creature_movement from botanica
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797602, 1797603, 1797604, 1799305, 1842005, 1842006, 1842201, 1842202, 1842203);

-- Text should be TextEmote
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id = '16944';

-- add correct spell_script target for heroic version of Rejuvenate Plant
DELETE FROM spell_script_target WHERE entry IN(39126);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(39126,1,21555,0), -- 19557 normal entry
(39126,1,21554,0), -- 19608 normal entry
(39126,1,21579,0), -- 19920 normal entry
(39126,1,21583,0), -- 19958 normal entry
(39126,1,21550,0), -- 19962 normal entry
(39126,1,21566,0), -- 19964 normal entry
(39126,1,21557,0); -- 19969 normal entry