-- patch 2.4.2 changed cd to 35 down from 45 seconds
UPDATE spell_proc_event SET Cooldown=35 WHERE entry IN(32837);
