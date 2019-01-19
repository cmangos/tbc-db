-- Fix faction for Scarlet Smith 1885
-- https://gist.githubusercontent.com/Kinzcool/e81137dab3bc828631ada717f7da5159/raw/796cd141ede5c02299a55ecd3037cdd460b5944c/creaturedifficulty.sql
UPDATE creature_template SET Faction=14 WHERE Entry=1885; -- Scarlet Smith

