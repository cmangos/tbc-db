-- ==============================================
-- Add Additional Comment Fields For Vendor Items
-- ==============================================
ALTER TABLE npc_vendor_template ADD COLUMN `comments` TEXT;
ALTER TABLE npc_vendor ADD COLUMN `comments` TEXT;




