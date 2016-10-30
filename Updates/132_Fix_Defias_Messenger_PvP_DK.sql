-- Fix Defias Messanger Dishonorable Kill (PvP)
UPDATE creature_template_addon SET b2_1_flags=0 WHERE entry IN (550);

