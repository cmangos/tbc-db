-- Heckling Fel Sprite - immune to banish and freeze
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|131072|4096 WHERE `entry`=18978;


