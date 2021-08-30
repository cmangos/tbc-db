-- make dragon orbs on KJ use dynguid system - experimental tech
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE entry IN(188114,188115,188116,187869);

