-- ================================================================================
-- ====     TBC-DB RELEASE 1.0.X - MANGOS DB UPDATE (CONSOLE ERROR CLEANUP)    ====
-- ================================================================================

-- THIS FILE SHOULD BE RUN ON YOUR MANGOS DB ANYTIME YOU UPDATE YOUR SD2 VERSION (THIS ALLOWS CURRENT SD2 VERSION BACKPORTING TO TBC)
-- YOU CAN RUN THIS FILE AS MANY TIMES AS YOU WANT AS IT WILL ONLY REMOVE KNOWN WOTLK CONTENT IF PRESENT

/* Copyright (C) 2007-2010 UDB project <http://udb.no-ip.org/>
 * Copyright (C) 2006-2010 ScriptDev2 <http://www.scriptdev2.com/>
 * Copyright (C) 2008-2010 ACID <http://www.scriptdev2.com/>
 * Copyright (C) 2009-2010 TBC-DB project <http://udb.no-ip.org/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License','or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not','write to the Free Software
 * Foundation','Inc.','59 Temple Place','Suite 330','Boston','MA  02111-1307  USA
 */

-- SCRIPTED_AREATRIGGER - DELETE NON-EXISTING WOTLK ENTRIES (THESE DO NOT EXIST IN 2.4.3 DBC)
DELETE FROM scripted_areatrigger WHERE entry IN (4778,4871,4872,4873,5046,5047,5284,5285,5286,5287,5108,5030,4991,5140);

