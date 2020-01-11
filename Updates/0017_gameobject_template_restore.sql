-- restore some gameobject templates that underwent custom change in the past

-- Supply Crate trap
UPDATE gameobject_template SET data0=1766, data1=60, data2=5 WHERE entry IN (175534, 175535, 175536, 175537);

-- Dawn's Gambit
UPDATE gameobject_template SET data2=0, data3=18110, data8=1 WHERE entry=176110;
UPDATE gameobject_template SET data2=0, data3=0, data4=0, data8=0 WHERE entry=177304;

-- Night Elven Bear Trap
UPDATE gameobject_template SET data2=0, data4=1 WHERE entry=109515;

-- Ragnaros
UPDATE gameobject_template SET data2=0 WHERE entry=178088;


