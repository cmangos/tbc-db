-- Add spell_chain for mana gem conjuring
DELETE FROM spell_chain WHERE spell_id IN (759,3552,10053,10054,27101);
INSERT INTO spell_chain VALUES
(759,0,759,1,0),
(3552,759,759,2,0),
(10053,3552,759,3,0),
(10054,10053,759,4,0),
(27101,10054,759,5,0);
