-- ----------
-- IMMUNITIES
-- ----------

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
16545, -- Ethereal Spellfilcher
17229, -- Kil'rek
15690, -- Prince Malchezaar
15688 -- Terestian Illhoof
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast 
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
19874, -- Baron Rafe Dreuger
19875, -- Baroness Dorothea Millstipe
16489, -- Chaotic Sentience
16461, -- Concubine
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16481, -- Ghastly Haunt
16412, -- Ghostly Baker
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
19872, -- Lady Catriona Von'Indi
17007, -- Lady Keira Berrybuck
19873, -- Lord Crispin Ference
19876, -- Lord Robin Daris
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16460, -- Night Mistress
16406, -- Phantom Attendant
16425, -- Phantom Guardsman
16409, -- Phantom Guest
17067, -- Phantom Hound
16472, -- Phantom Stagehand
16408, -- Phantom Valet
16178, -- Phase Hound
15690, -- Prince Malchezaar
17261, -- Restless Skeleton
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16415, -- Skeletal Waiter
16526, -- Sorcerous Shade
16389, -- Spectral Apprentice
15547, -- Spectral Charger
16411, -- Spectral Chef
16468, -- Spectral Patron
16473, -- Spectral Performer
16410, -- Spectral Retainer
16424, -- Spectral Sentry
16407, -- Spectral Servant
15551, -- Spectral Stable Hand
15548, -- Spectral Stallion
16525, -- Spell Shade
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482, -- Trapped Soul
16459 -- Wanton Hostess
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
16457, -- Maiden of Virtue
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer 
17543, -- Strawman
15688, -- Terestian Illhoof 
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
16457, -- Maiden of Virtue
16529, -- Magical Horror
16491, -- Mana Feeder
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer 
17543, -- Strawman
15688, -- Terestian Illhoof 
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
19874, -- Baron Rafe Dreuger
19875, -- Baroness Dorothea Millstipe
16489, -- Chaotic Sentience
16461, -- Concubine
17167, -- Conjured Elemental
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16481, -- Ghastly Haunt
16412, -- Ghostly Baker
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
19872, -- Lady Catriona Von'Indi
17007, -- Lady Keira Berrybuck
19873, -- Lord Crispin Ference
19876, -- Lord Robin Daris
16457, -- Maiden of Virtue
16529, -- Magical Horror
16491, -- Mana Feeder
16530, -- Mana Warp
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16460, -- Night Mistress
16406, -- Phantom Attendant
16425, -- Phantom Guardsman
16409, -- Phantom Guest
17067, -- Phantom Hound
16472, -- Phantom Stagehand
16408, -- Phantom Valet
16178, -- Phase Hound
15690, -- Prince Malchezaar
17261, -- Restless Skeleton
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16415, -- Skeletal Waiter
16526, -- Sorcerous Shade
16389, -- Spectral Apprentice
15547, -- Spectral Charger
16411, -- Spectral Chef
16468, -- Spectral Patron
16473, -- Spectral Performer
16410, -- Spectral Retainer
16424, -- Spectral Sentry
16407, -- Spectral Servant
15551, -- Spectral Stable Hand
15548, -- Spectral Stallion
16525, -- Spell Shade
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482, -- Trapped Soul
16459 -- Wanton Hostess
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
16457, -- Maiden of Virtue
16529, -- Magical Horror
16491, -- Mana Feeder
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16468, -- Spectral Patron
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16179, -- Hyakiss the Lurker
17546, -- Roar
16181, -- Rokad the Ravager
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
17521, -- The Big Bad Wolf
18168, -- The Crone
17548 -- Tito
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- SHACKLE [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
16152, -- Attumen the Huntsman
17535, -- Dorothee
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
17534, -- Julianne
16151, -- Midnight
15687, -- Moroes
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
17533, -- Romulo
16524, -- Shade of Aran
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
16482 -- Trapped Soul
);

-- TURN [2 spells] (Turn Undead, Turn Evil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry IN (
16181, -- Rokad the Ravager
16414, -- Ghostly Steward
16470, -- Ghostly Philanthropist
16473, -- Spectral Performer
16481, -- Ghastly Haunt
16482, -- Trapped Soul
16526, -- Sorcerous Shade
16152, -- Attumen the Huntsman
17535, -- Dorothee
17534, -- Julianne
17229, -- Kil'rek
16457, -- Maiden of Virtue
16151, -- Midnight
15687, -- Moroes
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17533, -- Romulo
16524, -- Shade of Aran
16471, -- Skeletal Usher
16410, -- Spectral Retainer
15688 -- Terestian Illhoof
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
19874, -- Baron Rafe Dreuger
19875, -- Baroness Dorothea Millstipe
16489, -- Chaotic Sentience
16461, -- Concubine
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16481, -- Ghastly Haunt
16412, -- Ghostly Baker
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
17229, -- Kil'rek
19872, -- Lady Catriona Von'Indi
17007, -- Lady Keira Berrybuck
19873, -- Lord Crispin Ference
19876, -- Lord Robin Daris
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16460, -- Night Mistress
16406, -- Phantom Attendant
16425, -- Phantom Guardsman
16409, -- Phantom Guest
17067, -- Phantom Hound
16472, -- Phantom Stagehand
16408, -- Phantom Valet
16178, -- Phase Hound
15690, -- Prince Malchezaar
17261, -- Restless Skeleton
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16415, -- Skeletal Waiter
16526, -- Sorcerous Shade
16389, -- Spectral Apprentice
15547, -- Spectral Charger
16411, -- Spectral Chef
16468, -- Spectral Patron
16473, -- Spectral Performer
16410, -- Spectral Retainer
16424, -- Spectral Sentry
16407, -- Spectral Servant
15551, -- Spectral Stable Hand
15548, -- Spectral Stallion
16525, -- Spell Shade
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482, -- Trapped Soul
16459 -- Wanton Hostess
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
16457, -- Maiden of Virtue
16529, -- Magical Horror
16530, -- Mana Warp
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- SAPPED [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16540 -- Shadow Pillager
);

-- ===========
-- EXTRA FLAGS
-- ===========

-- NOT_TAUNTABLE
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN (
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
16152, -- Attumen the Huntsman
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
17534, -- Julianne
16457, -- Maiden of Virtue
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
17533, -- Romulo
16524, -- Shade of Aran
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

-- HASTE IMMUNE [2 spells] (Curse of Tongues, Mind-numbing Poison)
UPDATE creature_template SET ExtraFlags=ExtraFlags|4194304 WHERE entry IN(
16488, -- Arcane Anomaly
16504, -- Arcane Protector
16485, -- Arcane Watchman
17096, -- Astral Flare
17283, -- Astral Spark
16152, -- Attumen the Huntsman
16489, -- Chaotic Sentience
17248, -- Demon Chains
17535, -- Dorothee
16545, -- Ethereal Spellfilcher
16544, -- Ethereal Thief
16595, -- Fleshbeast
16470, -- Ghostly Philanthropist
16414, -- Ghostly Steward
16596, -- Greater Fleshbeast
16179, -- Hyakiss the Lurker
17534, -- Julianne
16457, -- Maiden of Virtue
16529, -- Magical Horror
16151, -- Midnight
15687, -- Moroes
15689, -- Netherspite
17225, -- Nightbane
16472, -- Phantom Stagehand
16408, -- Phantom Valet
15690, -- Prince Malchezaar
17546, -- Roar
16181, -- Rokad the Ravager
17533, -- Romulo
16524, -- Shade of Aran
16540, -- Shadow Pillager
16180, -- Shadikith the Glider
16471, -- Skeletal Usher
16526, -- Sorcerous Shade
16473, -- Spectral Performer
16410, -- Spectral Retainer
17543, -- Strawman
15688, -- Terestian Illhoof
17521, -- The Big Bad Wolf
18168, -- The Crone
15691, -- The Curator
17547, -- Tinhead
17548, -- Tito
16482 -- Trapped Soul
);

