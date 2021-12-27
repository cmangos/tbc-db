-- Amani'shi Warbringer 23580 removes immunities on dismount
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~(16+512+2048+4096+65536+8388608) WHERE `entry` = 23580;

REPLACE INTO creature_immunities (`entry`, `setid`, `type`, `value`) VALUES
(23580, 0, 5, 5), -- MECHANIC_FEAR
(23580, 0, 5, 10), -- MECHANIC_SLEEP
(23580, 0, 5, 12), -- MECHANIC_STUN
(23580, 0, 5, 13), -- MECHANIC_FREEZE
(23580, 0, 5, 17), -- MECHANIC_POLYMORPH
(23580, 0, 5, 24), -- MECHANIC_HORROR

(23580, 1, 5, 0);