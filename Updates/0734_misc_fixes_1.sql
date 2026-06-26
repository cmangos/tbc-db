-- Correct SpeedWalk,SpeedRun for npc_burster_worm
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7) WHERE `entry` IN ( -- most had 1,19048 for speedrun
16844, -- Crust Burster
16857, -- Marauding Crust Burster
16968, -- Tunneler
21849, -- Bone Crawler - was correct already
22482, -- Mature Bone Sifter
22466, -- Bone Sifter
21380, -- Greater Crust Burster
18678, -- Fulgorge
23285, -- Nethermine Burster
17075); -- Sandworm (prototype)

