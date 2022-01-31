-- make WSG and EOS flags move to dynguid system
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE entry IN(184141,179830,179831);


