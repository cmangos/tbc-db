-- Remove duplicate classic profession gos, which have no pooling
-- rechecked with https://github.com/cmangos/classic-db/commit/266897d621d32dafad11c821ac16d05a3e28722a
DELETE FROM `gameobject`  WHERE `guid` IN (
30591, --  71979
30589, -- 71944
31124, -- 76212
31123, -- 76193
20883, -- 76191
20882, -- 76189
20454, -- 76198
16582, -- 71974
32135, -- 71960
42460, -- 71965
42459, -- 71970
42458, -- 71952
42436, -- 71948
40005, -- 71983
15166, -- 100096
33514, -- 100092
34121 -- 100088
);

