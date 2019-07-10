UPDATE `creature_template` SET `MinLootGold`=510*100*100, `MaxLootGold`=516*100*100 WHERE `entry` IN (
-- Doomwalker
-- https://youtu.be/IuQg_JorkT8?t=561 513g
-- https://youtu.be/16DK_bdeYM8?t=108 513g
-- https://youtu.be/hoxsDjQ685I?t=249 510g
-- https://youtu.be/84bYvTfAiRw?t=467 516g
17711,

-- Doom Lord Kazzak
-- https://youtu.be/HN0DKaZ04qI?t=342 103g x 5 players = 515g
-- https://youtu.be/9I9ZRei1h8U?t=141 48g? (2011 video, assuming nerfed at some point?)
18728
);

-- Emerald Dragons + Azuregos and Lord Kazzak seem to drop similar amounts
UPDATE `creature_template` SET `MinLootGold`=130*100*100, `MaxLootGold`=182*100*100 WHERE `entry` IN (
-- Azuregos
-- https://youtu.be/7haJ41AAujk?t=118 161g, narrator says "usually about 160g"
6109,	

-- Ysondre
-- https://youtu.be/3ZSRE2JQKWU?t=246 182g?
-- https://youtu.be/5_IMr6hOoHg?t=247 130g
14887,

-- Lethon
14888,

-- Emeriss
14889,

-- Taerar
-- https://youtu.be/3ZSRE2JQKWU?t=246 139g
-- https://youtu.be/PRfjvlbBTpA?t=366 78g x 2 players = 156g
14890,

-- Lord Kazzak
-- https://youtu.be/-P1iMu-CLuA?t=245 170g (look at guild chat)
12397
);

-- Nefarian (11583)
-- https://youtu.be/p50wLTqITHY?t=411 260g
-- https://youtu.be/SY8lIlzPVfE?t=391 277g
-- current 2314285 - 2828570 seems accurate


