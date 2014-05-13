-- Fixed respawn time of creatures in outer part of Uldaman
UPDATE `creature` SET `spawntimesecsmin` = 600, `spawntimesecsmax` = 600 WHERE `id` IN (4846,4844,2932) AND `guid` IN (
7064,
7065,
7068,
7069,
7071,
7166,
7167,
7690, -- changed from 7202 as they are duplicate due to movement
7685,
7714,
7718,
8176,
8177,
8180,
8183,
8185,
8186,
8187,
8188,
8189,
8190,
8191,
8192,
8193,
8194
);

