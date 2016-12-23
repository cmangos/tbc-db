-- ===================
-- Fixes by Killerwife
-- ===================
-- Grimoire Business quest script
-- http://www.wowhead.com/quest=10998/grim-oire-business
DELETE FROM creature WHERE id=23081; -- add middle bunny
INSERT INTO creature VALUES(140030,23081,530,1,0,0,3279.902100,4640.356445,216.527542,1.085581,300,0,0,1,0,0,0);

DELETE FROM creature WHERE id=23040; -- add fire circle bunnies
INSERT INTO creature VALUES(140025,23040,530,1,20570,0,3279.38,4664.31,217,-0.523599,300,0,0,1,0,0,0);
INSERT INTO creature VALUES(140026,23040,530,1,20570,0,3257.34,4653.77,217,-2.076940,300,0,0,1,0,0,0);
INSERT INTO creature VALUES(140027,23040,530,1,20570,0,3261.88,4625.64,217,0.750492,300,0,0,1,0,0,0);
INSERT INTO creature VALUES(140028,23040,530,1,20570,0,3292.62,4619.90,217,-0.2618,300,0,0,1,0,0,0);
INSERT INTO creature VALUES(140029,23040,530,1,0,0,3304.44,4643.87,217,-0.10472,300,0,0,1,0,0,0);

-- TODO make all bunnies invisible and make them fly at the specified Z coordinate

-- ACID SCRIPT CHANGE
DELETE FROM creature_ai_scripts WHERE creature_id=22911; -- remove grimoire spawn - implemented in SD2

