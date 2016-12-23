-- ==============================================================================
-- Fix Quest Reputation Gains and Reputation Caps - Turn In Quests (Aldor Quests)
-- ==============================================================================

-- ----------------------------------------------------
-- Fix Quest 10325 "Marks of Kil'jaeden" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10325); -- Correct Double Reputation Gains Problem

-- -----------------------------------------------------------
-- Fix Quest 10326 "More Marks of Kil'jaeden" Reputation Gains - Quest Vanishes at Honored Scryer
-- -----------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=932, RequiredMaxRepValue=5999 WHERE entry IN (10326); -- Will Award Aldor 932 Reputation To 5999 (Will Award The Sha'tar 935 Reputation To 5999)
UPDATE quest_template SET RewRepFaction1=932, RewRepValue1=250, RewRepFaction2=0, RewRepValue2=0, RewRepFaction3=0, RewRepValue3=0, RewRepFaction4=0, RewRepValue4=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=5999, RewMaxRepValue5=5999 WHERE entry IN (10326); -- Correct Double Reputation Gains Problem

-- ------------------------------------------------------------
-- Fix Quest 10327 "Single Mark of Kil'jaeden" Reputation Gains - Quest Vanishes at Honored Scryer
-- ------------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=932, RequiredMaxRepValue=5999 WHERE entry IN (10327); -- Will Award Aldor 932 Reputation To 5999 (Will Award The Sha'tar 935 Reputation To 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=5999, RewMaxRepValue5=5999 WHERE entry IN (10327); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10653 "Marks of Sargeras" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10653); -- Correct Double Reputation Gains Problem

-- ---------------------------------------------------------
-- Fix Quest 10654 "More Marks of Sargeras" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- ---------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10421); -- Awards Aldor 932 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10654); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------------
-- Fix Quest 10655 "Single Mark of Sargeras" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- ----------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10421); -- Awards Aldor 932 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10655); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10826 "Marks of Sargeras" Reputation Gains (Shadowmoon Valley Version)
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10826); -- Correct Double Reputation Gains Problem

-- ---------------------------------------------------------
-- Fix Quest 10827 "More Marks of Sargeras" Reputation Gains (Shadowmoon Valley Version) - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- ---------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10827);  -- Awards Aldor 932 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10827); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------------
-- Fix Quest 10828 "Single Mark of Sargeras" Reputation Gains (Shadowmoon Valley Version) - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- ----------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10828); -- Awards Aldor 932 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10828); -- Correct Double Reputation Gains Problem

-- ------------------------------------------------
-- Fix Quest 10421 "Fel Armaments" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- ------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10421); -- Awards Aldor 932 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=175, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10421); -- Correct Double Reputation Gains Problem






-- ===============================================================================
-- Fix Quest Reputation Gains and Reputation Caps - Turn In Quests (Scryer Quests)
-- ===============================================================================

-- ---------------------------------------------------
-- Fix Quest 10412 "Firewing Signets" Reputation Gains
-- ---------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10412); -- Correct Double Reputation Gains Problem

-- -----------------------------------------------------------------------------------------
-- Fix Quest 10414 "Single Firewing Signet" - Awards to Honored and Correct Reputation Gains - Quest Vanishes at Honored Scryer
-- -----------------------------------------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=934, RequiredMaxRepValue=5999 WHERE entry IN (10414); -- Awards Scryer Reputation Until Honored 5999 (Will Award The Sha'tar 935 Reputation To 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=5999, RewMaxRepValue5=5999 WHERE entry IN (10414); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------------------------------------------
-- Fix Quest 10415 "More Firewing Signets" - Awards to Honored and Correct Reputation Gains - Quest Vanishes at Honored Scryer
-- ----------------------------------------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=934, RequiredMaxRepValue=5999 WHERE entry IN (10415); -- Awards Scryer Reputation Until Honored 5999 (Will Award The Sha'tar 935 Reputation To 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=5999, RewMaxRepValue5=5999 WHERE entry IN (10415); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10656 "Sunfury Signets" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10656); -- Correct Double Reputation Gains Problem

-- -------------------------------------------------------
-- Fix Quest 10658 "More Sunfury Signets" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- -------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10658); -- Awards Scryer 934 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10658); -- Correct Double Reputation Gains Problem

-- --------------------------------------------------------
-- Fix Quest 10659 "Single Sunfury Signet" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- --------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10659); -- Awards Scryer 934 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10659); -- Correct Double Reputation Gains Problem

-- --------------------------------------------------------
-- Fix Quest 10822 "Single Sunfury Signet" Reputation Gains (Shadowmoon Valley Version) - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- --------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10822); -- Awards Scryer 934 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=12, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10822); -- Correct Double Reputation Gains Problem

-- -------------------------------------------------------
-- Fix Quest 10823 "More Sunfury Signets" Reputation Gains (Shadowmoon Valley Version) - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- -------------------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10823); -- Awards Scryer 934 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10823); -- Correct Double Reputation Gains Problem

-- --------------------------------------------------
-- Fix Quest 10824 "Sunfury Signets" Reputation Gains (Shadowmoon Valley Version)
-- --------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=125 WHERE entry IN (10824); -- Correct Double Reputation Gains Problem

-- -----------------------------------------------
-- Fix Quest 10419 "Arcane Tomes" Reputation Gains - Quest Does NOT Vanish (Just No Longer Awards Rep)
-- -----------------------------------------------
UPDATE quest_template SET RequiredMaxRepFaction=0, RequiredMaxRepValue=0 WHERE entry IN (10419); -- Awards Scryer 934 Reputation Until Honored 42999 (Awards The Sha'tar 935 Reputation Until Honored 5999)
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0, RewRepFaction5=935, RewRepValue5=175, RewMaxRepValue1=42999, RewMaxRepValue5=5999 WHERE entry IN (10419); -- Correct Double Reputation Gains Problem








-- ==================================================
-- Fix Quest Reputation Gains - Double Reward Problem
-- ==================================================

-- ----------------------------------------------------
-- Fix Quest 10017 "Strained Supplies" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10017); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10019 "More Venom Sacs" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10019); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10020 "A Cure for Zahlia" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10020); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10021 "Restoring the Light" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10021); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10024 "Voren'thal's Visions" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10024); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10025 "More Basilisk Eyes" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10025); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10169 "Losing Gracefully" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10169); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10189 "Manaforge B'naar" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10189); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10193 "High Value Targets" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10193); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10194 "Stealth Flight" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10194); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10197 "A Convincing Disguise" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10197); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10198 "Information Gathering" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10198); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10202 "A Defector" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10202); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10204 "Bloodgem Crystals" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10204); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10241 "Distraction at Manaforge B'naar" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10241); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10243 "Naaru Technology" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10243); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10245 "B'naar Console Transcription" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10245); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10246 "Attack on Manaforge Coruu" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10246); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10299 "Shutting Down Manaforge B'naar" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10299); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10313 "Measuring Warp Energies" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10313); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10321 "Shutting Down Manaforge Coruu" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10321); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10322 "Shutting Down Manaforge Duro" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10322); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10323 "Shutting Down Manaforge Ara" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10323); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10328 "Sunfury Briefings" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10328); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10329 "Shutting Down Manaforge B'naar" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10329); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10330 "Shutting Down Manaforge Coruu" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10330); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10338 "Shutting Down Manaforge Duro" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10338); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10341 "Kick Them While They're Down" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10341); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10365 "Shutting Down Manaforge Ara" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10365); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10380 "A Dark Pact" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10380); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10381 "Aldor No More" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10381); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10407 "Socrethar's Shadow" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10407); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10409 "Deathblow to the Legion" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10409); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10410 "Ishanah's Help" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10410); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10416 "Synthesis of Power" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10416); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10420 "A Cleansing Light" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10420); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10431 "Outside Assistance" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10431); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10432 "Damning Evidence" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10432); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10507 "Turning Point" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10507); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10508 "A Gift for Voren'thal" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10508); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10509 "Bound for Glory" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10509); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10553 "Voren'thal the Seer" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10553); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10554 "Ishanah" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10554); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10568 "Tablets of Baa'ri" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10568); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10571 "Oronu the Elder" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10571); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10574 "The Ashtongue Corruptors" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10574); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10575 "The Warden's Cage" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10575); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10587 "Karabor Training Grounds" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10587); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10619 "The Ashtongue Tribe" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10619); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10637 "A Necessary Distraction" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10637); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10640 "Altruis" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10640); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10650 "Return to the Aldor" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10650); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10651 "Varedis Must Be Stopped" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10651); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10652 "Behind Enemy Lines" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10652); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10683 "Tablets of Baa'ri" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10683); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10684 "Oronu the Elder" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10684); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10685 "The Ashtongue Corruptors" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10685); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10686 "The Warden's Cage" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10686); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10687 "Karabor Training Grounds" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10687); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10688 "A Necessary Distraction" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10688); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10689 "Altruis" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10689); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10691 "Return to the Scryers" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10691); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10692 "Varedis Must Be Stopped" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10692); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10807 "The Ashtongue Broken" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10807); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10816 "Reclaiming Holy Grounds" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10816); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------
-- Fix Quest 10817 "The Great Retribution" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10817); -- Correct Double Reputation Gains Problem

-- -------------------------------------------------------
-- Fix Quest 11038 "Assist Exarch Orelis" Reputation Gains
-- ----------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (11038); -- Correct Double Reputation Gains Problem

-- ----------------------------------------------------------------
-- Fix Quest 11039 "Report to Spymaster Thalodien" Reputation Gains
-- ----------------------------------------------------------------
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (11039); -- Correct Double Reputation Gains Problem





