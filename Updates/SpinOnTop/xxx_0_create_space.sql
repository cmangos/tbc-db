
UPDATE creature SET equipment_id = equipment_id + 50000 WHERE NOT equipment_id = 0;
UPDATE creature_template SET EquipmentTemplateID = EquipmentTemplateID + 50000 WHERE NOT EquipmentTemplateID = 0;
UPDATE creature_equip_template SET entry = entry + 50000 WHERE NOT entry = 0;
UPDATE creature_equip_template_raw SET entry = entry +50000 WHERE NOT entry = 0;
UPDATE game_event_creature_data SET equipment_id = equipment_id + 50000 WHERE NOT equipment_id = 0;
