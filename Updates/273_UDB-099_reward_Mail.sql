-- Convert quest_template.RewMailTemplateId to dbscripts_on_quest_end, SCRIPT_COMMAND_SEND_MAIL

DELETE FROM dbscripts_on_quest_end WHERE id IN (1141, 3644, 3645, 3646, 3647, 5128, 5237, 5238, 6001, 6002, 6125, 6130, 6962, 6984, 7025, 7045, 7735, 7738, 8149, 8150, 8240, 8323, 8324, 8619, 8635, 8636, 8642, 8643, 8644, 8645, 8646, 8647, 8648, 8649, 8650, 8651, 8652, 8653, 8654, 8670, 8671, 8672, 8673, 8674, 8675, 8676, 8677, 8678, 8679, 8680, 8681, 8682, 8683, 8684, 8685, 8686, 8688, 8713, 8714, 8715, 8716, 8717, 8718, 8719, 8720, 8721, 8722, 8723, 8724, 8725, 8726, 8727, 8746, 8762, 8866, 9671, 10588, 12278, 12306);

INSERT INTO dbscripts_on_quest_end (id, command, datalong, datalong2, dataint, comments) VALUES
(1141, 38, 87, 0, 0, 'Send Mail on QuestReward'),
(3644, 38, 103, 0, 86400, 'Send Mail on QuestReward'),
(3645, 38, 99, 0, 86400, 'Send Mail on QuestReward'),
(3646, 38, 104, 0, 86400, 'Send Mail on QuestReward'),
(3647, 38, 100, 0, 86400, 'Send Mail on QuestReward'),
(5128, 38, 98, 0, 86400, 'Send Mail on QuestReward'),
(5237, 38, 101, 0, 86400, 'Send Mail on QuestReward'),
(5238, 38, 107, 0, 86400, 'Send Mail on QuestReward'),
(6001, 38, 112, 0, 21600, 'Send Mail on QuestReward'),
(6002, 38, 116, 0, 21600, 'Send Mail on QuestReward'),
(6125, 38, 115, 0, 21600, 'Send Mail on QuestReward'),
(6130, 38, 114, 0, 21600, 'Send Mail on QuestReward'),
(6962, 38, 102, 0, 7200, 'Send Mail on QuestReward'),
(6984, 38, 108, 0, 86400, 'Send Mail on QuestReward'),
(7025, 38, 118, 0, 7200, 'Send Mail on QuestReward'),
(7045, 38, 117, 0, 86400, 'Send Mail on QuestReward'),
(7735, 38, 119, 0, 0, 'Send Mail on QuestReward'),
(7738, 38, 120, 0, 0, 'Send Mail on QuestReward'),
(8149, 38, 113, 0, 86400, 'Send Mail on QuestReward'),
(8150, 38, 111, 0, 86400, 'Send Mail on QuestReward'),
(8240, 38, 109, 0, 86400, 'Send Mail on QuestReward'),
(8323, 38, 93, 0, 21600, 'Send Mail on QuestReward'),
(8324, 38, 94, 0, 21600, 'Send Mail on QuestReward'),
(8619, 38, 84, 0, 21600, 'Send Mail on QuestReward'),
(8635, 38, 85, 0, 21600, 'Send Mail on QuestReward'),
(8636, 38, 86, 0, 21600, 'Send Mail on QuestReward'),
(8642, 38, 88, 0, 21600, 'Send Mail on QuestReward'),
(8643, 38, 89, 0, 21600, 'Send Mail on QuestReward'),
(8644, 38, 90, 0, 21600, 'Send Mail on QuestReward'),
(8645, 38, 91, 0, 21600, 'Send Mail on QuestReward'),
(8646, 38, 92, 0, 21600, 'Send Mail on QuestReward'),
(8647, 38, 95, 0, 21600, 'Send Mail on QuestReward'),
(8648, 38, 96, 0, 21600, 'Send Mail on QuestReward'),
(8649, 38, 97, 0, 21600, 'Send Mail on QuestReward'),
(8650, 38, 121, 0, 21600, 'Send Mail on QuestReward'),
(8651, 38, 124, 0, 21600, 'Send Mail on QuestReward'),
(8652, 38, 125, 0, 21600, 'Send Mail on QuestReward'),
(8653, 38, 126, 0, 21600, 'Send Mail on QuestReward'),
(8654, 38, 127, 0, 21600, 'Send Mail on QuestReward'),
(8670, 38, 128, 0, 21600, 'Send Mail on QuestReward'),
(8671, 38, 129, 0, 21600, 'Send Mail on QuestReward'),
(8672, 38, 130, 0, 21600, 'Send Mail on QuestReward'),
(8673, 38, 131, 0, 21600, 'Send Mail on QuestReward'),
(8674, 38, 132, 0, 21600, 'Send Mail on QuestReward'),
(8675, 38, 133, 0, 21600, 'Send Mail on QuestReward'),
(8676, 38, 134, 0, 21600, 'Send Mail on QuestReward'),
(8677, 38, 135, 0, 21600, 'Send Mail on QuestReward'),
(8678, 38, 136, 0, 21600, 'Send Mail on QuestReward'),
(8679, 38, 137, 0, 21600, 'Send Mail on QuestReward'),
(8680, 38, 138, 0, 21600, 'Send Mail on QuestReward'),
(8681, 38, 139, 0, 21600, 'Send Mail on QuestReward'),
(8682, 38, 140, 0, 21600, 'Send Mail on QuestReward'),
(8683, 38, 141, 0, 21600, 'Send Mail on QuestReward'),
(8684, 38, 142, 0, 21600, 'Send Mail on QuestReward'),
(8685, 38, 143, 0, 21600, 'Send Mail on QuestReward'),
(8686, 38, 144, 0, 21600, 'Send Mail on QuestReward'),
(8688, 38, 145, 0, 21600, 'Send Mail on QuestReward'),
(8713, 38, 146, 0, 21600, 'Send Mail on QuestReward'),
(8714, 38, 147, 0, 21600, 'Send Mail on QuestReward'),
(8715, 38, 148, 0, 21600, 'Send Mail on QuestReward'),
(8716, 38, 149, 0, 21600, 'Send Mail on QuestReward'),
(8717, 38, 150, 0, 21600, 'Send Mail on QuestReward'),
(8718, 38, 151, 0, 21600, 'Send Mail on QuestReward'),
(8719, 38, 152, 0, 21600, 'Send Mail on QuestReward'),
(8720, 38, 153, 0, 21600, 'Send Mail on QuestReward'),
(8721, 38, 154, 0, 21600, 'Send Mail on QuestReward'),
(8722, 38, 155, 0, 21600, 'Send Mail on QuestReward'),
(8723, 38, 156, 0, 21600, 'Send Mail on QuestReward'),
(8724, 38, 157, 0, 21600, 'Send Mail on QuestReward'),
(8725, 38, 158, 0, 21600, 'Send Mail on QuestReward'),
(8726, 38, 159, 0, 21600, 'Send Mail on QuestReward'),
(8727, 38, 160, 0, 21600, 'Send Mail on QuestReward'),
(8746, 38, 122, 0, 172800, 'Send Mail on QuestReward'),
(8762, 38, 161, 0, 172800, 'Send Mail on QuestReward'),
(8866, 38, 168, 0, 21600, 'Send Mail on QuestReward'),
(9671, 38, 180, 0, 0, 'Send Mail on QuestReward'),
(10588, 38, 183, 0, 0, 'Send Mail on QuestReward'),
(12278, 38, 209, 0, 0, 'Send Mail on QuestReward'),
(12306, 38, 210, 0, 0, 'Send Mail on QuestReward');

UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=1141;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=3644;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=3645;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=3646;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=3647;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=5128;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=5237;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=5238;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6001;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6002;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6125;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6130;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6962;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=6984;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=7025;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=7045;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=7735;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=7738;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8149;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8150;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8240;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8323;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8324;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8619;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8635;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8636;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8642;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8643;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8644;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8645;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8646;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8647;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8648;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8649;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8650;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8651;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8652;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8653;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8654;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8670;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8671;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8672;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8673;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8674;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8675;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8676;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8677;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8678;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8679;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8680;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8681;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8682;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8683;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8684;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8685;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8686;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8688;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8713;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8714;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8715;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8716;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8717;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8718;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8719;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8720;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8721;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8722;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8723;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8724;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8725;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8726;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8727;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8746;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8762;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=8866;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=9671;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=10588;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=12278;
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0, CompleteScript=entry WHERE entry=12306;


