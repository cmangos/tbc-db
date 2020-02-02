-- Remove SPELL_SCHOOL_NORMAL (Physical) from Nature's Grace Proc
UPDATE `spell_proc_event` SET `SchoolMask` = `SchoolMask`&~1 WHERE `entry` = 16880;

