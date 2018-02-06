INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
	VALUES 
	('883601', '8836', '0', '0', '70', '1', '5000', '10000', '15000', '20000', '11', '13168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Battle Chicken - Cast Chicken Fury periodically'),
	('883602', '8836', '0', '2', '18', '1', '8000', '8000', '8000', '8000', '11', '23060', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'Battle Chicken - Cast Battle Squawk, set phase 1');

UPDATE `creature_template` 
	SET `AIName`='EventAI' 
	WHERE `Entry`='8836';