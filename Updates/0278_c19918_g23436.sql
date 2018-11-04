-- Fix MMAP error for g.23436 c.19918
UPDATE `creature` SET `position_x` = -8336.92, `position_y` = -4462.46, `position_z` = -99.6505 WHERE `guid` = 23436 AND `id` = 19918;

