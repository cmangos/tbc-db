-- Decrease CallForHelp for Spectral Servant 16407 & Phantom Guest 16409
-- Part of https://github.com/cmangos/issues/issues/3264 - chain pulling solution outstanding, not sure what default callforhelp is but decreasing this value from default already helps alot.
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` IN (16409,16407);

