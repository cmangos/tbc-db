-- Add correct proc chance for s.43730 Electrified - i.33866 Stormchops
-- https://www.youtube.com/watch?v=NBkHheAcTvo
-- https://www.wowhead.com/item=33866/stormchops#comments
-- On a different note, I also tested the lightning proc on the Stormchops just for fun.
-- I ate one and then went to Skettis to do the daily Kaliri bird extermination.
-- Since you also have to collect warp flesh I killed some of those too. From what I saw in my combat log, the Stormchops seem to proc about 2x per fight for me.
-- I didn’t actually time my fights themselves, I would guess them to be around 20-30 seconds since I’m not the fastest killing machine.
-- Each zap of lightning did about 20-25 damage and is capable of critting, which brought it up to about 30 damage.
-- So it’s really not a huge bonus you’re getting, it’s mostly a fun item. I didn’t test it in caster form either, so I don’t know if that affects the results or not.
REPLACE INTO `spell_proc_event` (`entry`,`SchoolMask`,`ppmRate`,`Cooldown`) VALUES (43730, 127, 5, 8); -- Electrified

