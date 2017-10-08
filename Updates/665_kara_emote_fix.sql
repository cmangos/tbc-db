-- Remove dance emote from Phantom Attendants and Spectral Retainers
DELETE FROM `creature_addon` WHERE `guid` IN (85099,85095,85096,85097,85098,85175,85118,85119,85120,85176,85111,85106,85189) AND `emote`=400;

