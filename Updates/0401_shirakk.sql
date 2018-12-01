-- improvements to shirrak - has acompanying core commit
UPDATE creature_template SET UnitFlags=33554434,FactionAlliance=14,FactionHorde=14 WHERE entry IN(18374,20308);
UPDATE creature_template SET HeroicEntry=20308,MinLevel=65,MaxLevel=65 WHERE entry IN(18374);
UPDATE creature_template SET MinLevel=70,MaxLevel=70 WHERE entry IN(18374);

