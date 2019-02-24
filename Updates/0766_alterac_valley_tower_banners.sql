-- Alterac Valley: 
-- Placeholder banners above each tower are now correctly non-interactable
UPDATE gameobject_template 
SET flags = 16 
WHERE 
    entry = 179436 or -- '[PH] Horde A1 Tower Pre-Banner BIG'
    entry = 178927 or -- '[PH] Alliance A1 Tower Banner BIG'
    entry = 178955 or -- '[PH] Horde H1 Tower Banner BIG'
    entry = 179446;   -- '[PH] Alliance H1 Tower Pre-Banner BIG'