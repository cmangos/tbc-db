UPDATE creature_template SET UnitFlags=33344 WHERE entry IN(20904,21622); -- warden melichar correct flags
UPDATE creature_template SET UnitFlags=832 WHERE entry IN(20977,21602); -- millhouse manastor correct flags
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN(20912,21599); -- harbringer skyriss correct flags

-- cyrukh fixes
UPDATE creature_template SET UnitFlags=320,FactionAlliance=16,FactionHorde=16 WHERE entry IN(21181);
UPDATE creature_model_info SET bounding_radius=5,combat_reach=10 WHERE modelid IN(20135);


