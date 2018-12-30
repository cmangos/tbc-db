-- Lady Vashj Bridge Console - remove GO_FLAG_NO_INTERACT
-- since Patch 2.4 it's possible to use this object regardless of the state of the other console objects for each boss
UPDATE gameobject_template SET flags=flags&~16 WHERE entry=184568;


