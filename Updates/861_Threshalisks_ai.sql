/* Ported to ACID
-- missing text emote
DELETE FROM `creature_ai_texts` 
	WHERE `entry` = -1017;
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) 
	VALUES 
	('-1017', '%s stops playing dead and charges forward!', '0', '2', '0', '0', '19729 19706 20279');

-- 19706 19729 20279 will now randomly feign death
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
	VALUES 
	('1970602', '19706', '2', '14', '50', '0', '15', '0', '0', '0', '11', '31261', '0', '0', '18', '536870912', '0', '0', '22', '2', '0', '0', 'Marshrock Threshalisk - Cast Permanent Feign Death (Root), Set unit flag UNK_29, set phase 2 below 15% hp'),
	('1970603', '19706', '0', '11', '100', '0', '5000', '8500', '0', '0', '28', '0', '31261', '0', '19', '536870912', '0', '0', '22', '3', '0', '0', 'Marshrock Threshalisk - Remove Permanent Feign Death (Root) and unit flag UNK_29, set phase 3 (Phase 2)'),
	('1970604', '19706', '0', '7', '1000', '0', '0', '0', '0', '0', '11', '35385', '1', '0', '54', '-1017', '0', '0', '0', '0', '0', '0', 'Marshrock Threshalisk - Charge and emote (Phase 3)'),
	('1972902', '19729', '2', '14', '60', '0', '15', '0', '0', '0', '11', '31261', '0', '0', '18', '536870912', '0', '0', '22', '2', '0', '0', 'Ironspine Threshalisk - Cast Permanent Feign Death (Root), Set unit flag UNK_29, set phase 2 below 15% hp'),
	('1972903', '19729', '0', '11', '70', '0', '5000', '8500', '0', '0', '28', '0', '31261', '0', '19', '536870912', '0', '0', '22', '3', '0', '0', 'Ironspine Threshalisk - Remove Permanent Feign Death (Root) and unit flag UNK_29, set phase 3 (Phase 2)'),
	('1972904', '19729', '0', '7', '1000', '0', '0', '0', '0', '0', '11', '35385', '1', '0', '54', '-1017', '0', '0', '0', '0', '0', '0', 'Ironspine Threshalisk - Charge and emote (Phase 3)'),
	('2027902', '20279', '2', '14', '30', '0', '15', '0', '0', '0', '11', '31261', '0', '0', '18', '536870912', '0', '0', '22', '2', '0', '0', 'Ragestone Threshalisk - Cast Permanent Feign Death (Root), Set unit flag UNK_29, set phase 2 below 15% hp'),
	('2027903', '20279', '0', '11', '100', '0', '5000', '8500', '0', '0', '28', '0', '31261', '0', '19', '536870912', '0', '0', '22', '3', '0', '0', 'Ragestone Threshalisk - Remove Permanent Feign Death (Root) and unit flag UNK_29, set phase 3 (Phase 2)'),
	('2027904', '20279', '0', '7', '1000', '0', '0', '0', '0', '0', '11', '35385', '1', '0', '54', '-1017', '0', '0', '0', '0', '0', '0', 'Ragestone Threshalisk - Charge and emote (Phase 3)');
*/

