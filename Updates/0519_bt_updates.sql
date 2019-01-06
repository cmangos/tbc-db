-- Greater Shadowfiend
UPDATE creature_template SET MeleeAttackPower=296, MeleeBaseAttackTime=1500 WHERE entry=22929;

-- Ashtongue Feral Spirit
UPDATE creature_template SET Detection=60 WHERE entry=22849;

-- Ashtongue Defender, Channeler, and Spiritbinder do not grant rep when killed
DELETE FROM creature_onkill_reputation WHERE creature_id IN (23216,23421,23524);

-- there is no other gender for Ashtongue Battlelord and Stormcaller
UPDATE creature_model_info SET modelid_other_gender=0 WHERE modelid IN (21115,21118);


