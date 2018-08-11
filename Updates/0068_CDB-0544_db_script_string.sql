-- Correct db_script_string for Marshal McBride, added proper punctuation at the end of his sentence.
UPDATE dbscript_string SET content_default = "You are dismissed, $N." WHERE entry = 2000000059;
