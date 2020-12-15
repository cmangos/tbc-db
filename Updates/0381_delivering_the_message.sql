DELETE FROM conditions WHERE condition_entry=11005;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(11005, 1, 35679, 1, 0, 0, 0, 'Source of Condition Has Aura: 35679, EffectIndex: 0');

DELETE FROM dbscripts_on_quest_start WHERE id=10406;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(10406, 0, 0, 34, 11005, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if player has aura s.35679'),
(10406, 0, 1, 15, 35679, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Protectorate Demolitionist');

