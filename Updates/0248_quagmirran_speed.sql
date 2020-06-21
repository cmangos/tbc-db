-- correct speed and force walking in water
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=8/7,ExtraFlags=ExtraFlags|0x00008000 WHERE entry IN(17942,19894);

