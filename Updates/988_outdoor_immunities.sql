-- =====================
-- ADD MISSING MECHANICS
-- =====================

-- CHARM [44 spells] (Mind Control, Enslave Demon, Dominate Mind, Seduction, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
19797, -- Illidari Highlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21928, -- Lothros
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
21663, -- Oronu the Elder
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21287, -- Warbringer Razuun
11980, -- Zuluhed the Whacked

20554, -- Arconus the Insatiable
20727, -- Captain Zovax
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
19705, -- Master Daellis Dawnstrike
20454, -- Nexus-King Salhadaar
20803, -- Overmaster Grindgarr
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
17057, -- Blacktalon the Savage
19312, -- Drillmaster Zurok
18944, -- Fel Soldier
19264, -- Force-Commander Gorax
19398, -- Gan'arg Peon
19457, -- Grillok "Darkeye"
18946, -- Infernal Siegebreaker
19397, -- Mo'arg Overseer
18945, -- Pit Commander
20798, -- Razorsaw
18976, -- Urga'zz
19298, -- Warbringer Arix'Amal
16964, -- Warlord Morkh
19005, -- Wrath Master

18159, -- Boss Grog'ak
19174, -- Chieftain Mummaki
18080, -- Kataru
18160, -- Overlord Gorefist
18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
20669, -- Shade of Mal'druk
18154, -- Ssslith
20477, -- Terrorclaw

18539, -- Ashkaz
18540, -- Ayit
19847, -- Levixus
18583, -- Lisaile Fireweaver
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
18541, -- Urdak

18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18298, -- Gava'xi
18391, -- Giselda the Crone
18567, -- Mo'arg Master Planner
18069, -- Mogor
18399, -- Murkblood Twin
18204, -- Ortor of Murkblood
22357, -- Reth'hedron the Subduer
18401, -- Skra'gath
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear
18413, -- Zorbo the Advisor

19747, -- Baelmon the Hound-Master
20753, -- Dorgok
22396, -- Draaca Longtail
20757, -- Fingrom
20768, -- Gnosh Brognat
20732, -- Gorr'Dim
20723, -- Korgaah
22305, -- Vekh
22911 -- Vim'gol the Vile
);

-- CONFUSED/DISORIENTED [3 spells] (Blind)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
18856, -- Arcane Annihilator
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
23163, -- Gezzarak the Huntress
22038, -- Hai'shulud
23165, -- Karrog
19847, -- Levixus
18554, -- Sharth Voldoun
22199, -- Slaag
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
21233, -- Legion Fel Cannon
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- DISTRACT [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8 WHERE entry IN (
18856, -- Arcane Annihilator
20284, -- Dr. Boom
20243, -- Scrapped Fel Reaver

21233 -- Legion Fel Cannon
);

-- FEAR [100 spells] (Scare Beast, Fear, Psychic Scream, Howl of Terror, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
21778, -- Doctor Gutrick
21779, -- Doctor Maleficus
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
18856, -- Arcane Annihilator
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
16977, -- Arch Mage Xintor
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
16978, -- Lieutenant Commander Thalvos
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
22038, -- Hai'shulud
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
22199, -- Slaag
22441, -- Teribus the Cursed
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
21233, -- Legion Fel Cannon
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- ROOT [126 spells] (Entangling Roots, Frost Nova, Improved Wing Clip, various Net abilities)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
22307, -- Rotting Forest-Rager
22199, -- Slaag
23029, -- Talonsworn Forest-Rager
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
21325, -- Raven's Wood Stonebark
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- SILENCE [55 spells] (Kick - Silenced, Counterspell - Silenced, Shield Bash - Silenced, Arcane Torrent, Spell Lock)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|256 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
21410, -- Blood Lord Zarath
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21164, -- Netharel
21315, -- Ruul the Darkener
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

20779, -- Congealed Void Horror
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver

18728, -- Doom Lord Kazzak
19191, -- Arazzius the Cruel
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18946, -- Infernal Siegebreaker
18945, -- Pit Commander

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

19847, -- Levixus
21838, -- Terokk

18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- SLEEP [40 spells] (Hibernate, Wyvern Sting, Sleep)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|512 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
21778, -- Doctor Gutrick
21779, -- Doctor Maleficus
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
18856, -- Arcane Annihilator
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17085, -- Aeranas
17000, -- Aggonis
19191, -- Arazzius the Cruel
16977, -- Arch Mage Xintor
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
16978, -- Lieutenant Commander Thalvos
18945, -- Pit Commander
19005, -- Wrath Master

21730, -- Alluvion
23161, -- Darkscreecher Akkarai
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
22307, -- Rotting Forest-Rager
18554, -- Sharth Voldoun
22199, -- Slaag
23029, -- Talonsworn Forest-Rager
22441, -- Teribus the Cursed
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
21233, -- Legion Fel Cannon
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
21325, -- Raven's Wood Stonebark
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- SNARE [186 spells] (Slow, Thunderclap, Hamstring, Concussive Shot, Chilled, Earthbind, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
21410, -- Blood Lord Zarath
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
22307, -- Rotting Forest-Rager
22199, -- Slaag
23029, -- Talonsworn Forest-Rager
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
21325, -- Raven's Wood Stonebark
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- STUN [266 spells] (War Stomp, Hammer of Justice, Cheap Shot, etc.)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
21410, -- Blood Lord Zarath
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22274, -- Dragonmaw Skybreaker
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21164, -- Netharel
21315, -- Ruul the Darkener
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

20779, -- Congealed Void Horror
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver

18728, -- Doom Lord Kazzak
19191, -- Arazzius the Cruel
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18946, -- Infernal Siegebreaker
18945, -- Pit Commander

19847, -- Levixus
22307, -- Rotting Forest-Rager
23029, -- Talonsworn Forest-Rager
21838, -- Terokk

18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
21325, -- Raven's Wood Stonebark
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- FREEZE [8 spells] (Freezing Trap)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
22199, -- Slaag
22441, -- Teribus the Cursed
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- KNOCKOUT [20 spells] (Gouge, Blast Wave, Repentance)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
18856, -- Arcane Annihilator
20779, -- Congealed Void Horror
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

23161, -- Darkscreecher Akkarai
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18554, -- Sharth Voldoun
22199, -- Slaag
21838, -- Terokk
20682, -- Terokkarantula
23162, -- Vakkiz the Windrager

18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
21233, -- Legion Fel Cannon
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- POLYMORPH [69 spells] (Polymorph, Hex)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN (
21171, -- Alandien
23267, -- Arvoar the Rapacious
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
11980, -- Zuluhed the Whacked

20284, -- Dr. Boom
20454, -- Nexus-King Salhadaar

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
23163, -- Gezzarak the Huntress
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18257, -- Gutripper
18069, -- Mogor
18399, -- Murkblood Twin
18290, -- Tusker
18402, -- Warmaul Champion

22911 -- Vim'gol the Vile
);

-- BANISH [20 spells] (Cyclone, Banish)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
20779, -- Congealed Void Horror
20202, -- Cragskaar
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
18944, -- Fel Soldier
19305, -- Goliathon
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
22199, -- Slaag
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- SHACKLE [4 spells] (Shackle Undead)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN (
21801, -- Vhel'kur

20483, -- Naberius

23161, -- Darkscreecher Akkarai
21838, -- Terokk
23162 -- Vakkiz the Windrager
);

-- HORROR [2 spells] (Death Coil)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8388608 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
23267, -- Arvoar the Rapacious
21506, -- Azaloth
23269, -- Barash the Den Mother
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22011, -- Corok the Mighty
19823, -- Crazed Colossus
21181, -- Cyrukh the Firelord
21778, -- Doctor Gutrick
21779, -- Doctor Maleficus
17711, -- Doomwalker
22253, -- Dragonmaw Ascendant
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21166, -- Illidari Dreadlord
22074, -- Illidari Mind Breaker
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21501, -- Makazradon
21500, -- Morgroron
21164, -- Netharel
23168, -- Or'kaos the Insane
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

19940, -- Apex
18856, -- Arcane Annihilator
20779, -- Congealed Void Horror
20202, -- Cragskaar
20138, -- Culuthas
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20772, -- Netherock
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver
20132, -- Socrethar

18728, -- Doom Lord Kazzak
17000, -- Aggonis
19191, -- Arazzius the Cruel
16977, -- Arch Mage Xintor
19354, -- Arzeth the Merciless
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18944, -- Fel Soldier
19305, -- Goliathon
16978, -- Lieutenant Commander Thalvos
18946, -- Infernal Siegebreaker
18945, -- Pit Commander
19005, -- Wrath Master

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

23161, -- Darkscreecher Akkarai
18647, -- Deathskitter
23163, -- Gezzarak the Huntress
22038, -- Hai'shulud
23165, -- Karrog
19847, -- Levixus
18533, -- Luanga the Imprisoner
18554, -- Sharth Voldoun
22199, -- Slaag
22441, -- Teribus the Cursed
21838, -- Terokk
20682, -- Terokkarantula
18707, -- Torgos
21515, -- Trachela
23162, -- Vakkiz the Windrager

18258, -- Bach'lor
18259, -- Banthar
18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18257, -- Gutripper
21233, -- Legion Fel Cannon
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18290, -- Tusker
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

19747, -- Baelmon the Hound-Master
23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- INTERRUPT [20 spells] (Counterspell, Pummel)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN (
21171, -- Alandien
22338, -- Arcubus Destroyer
21410, -- Blood Lord Zarath
21181, -- Cyrukh the Firelord
17711, -- Doomwalker
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21164, -- Netharel
21315, -- Ruul the Darkener
21168, -- Theras
22076, -- Torloth the Magnificent
21102, -- Uvuros
21979, -- Val'zareq the Conqueror
21178, -- Varedis
21801, -- Vhel'kur
11980, -- Zuluhed the Whacked

20779, -- Congealed Void Horror
19554, -- Dimensius the All-Devouring
20284, -- Dr. Boom
20483, -- Naberius
20454, -- Nexus-King Salhadaar
20243, -- Scrapped Fel Reaver

18728, -- Doom Lord Kazzak
18733, -- Fel Reaver
19400, -- Fel Reaver Sentry
18946, -- Infernal Siegebreaker
18945, -- Pit Commander

19847, -- Levixus
22307, -- Rotting Forest-Rager
23029, -- Talonsworn Forest-Rager
21838, -- Terokk

18398, -- Brokentoe
18423, -- Cho'war the Pillager
18535, -- Demos, Overseer of Hate
18411, -- Durn the Hungerer
18182, -- Gurok the Usurper
18069, -- Mogor
18399, -- Murkblood Twin
22357, -- Reth'hedron the Subduer
18400, -- Rokdar the Sundered Lord
18401, -- Skra'gath
18402, -- Warmaul Champion
18536, -- Xirkos, Overseer of Fear

23353, -- Braxxus
21032, -- Dreadwing
23261, -- Furywing
22281, -- Galvanoth
20555, -- Goc
20216, -- Grulloc
23281, -- Insidion
20600, -- Maggoc
23282, -- Obsidia
21325, -- Raven's Wood Stonebark
23061, -- Rivendark
22910, -- Skulloc Soulgrinder
22911, -- Vim'gol the Vile
23355 -- Zarcsin
);

-- SAPPED [3 spells] (Rogue Sap only)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN (
21171, -- Alandien
21410, -- Blood Lord Zarath
22012, -- Chancellor Bloodleaf
22274, -- Dragonmaw Skybreaker
23188, -- Dragonmaw Transporter
21409, -- Envoy Icarius
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
22093, -- Illidari Watcher
21164, -- Netharel
21315, -- Ruul the Darkener
22006, -- Shadowlord Deathwail
21168, -- Theras
22076, -- Torloth the Magnificent
21979, -- Val'zareq the Conqueror
21178, -- Varedis

20284, -- Dr. Boom

18046, -- Rajah Haghazed
18044, -- Rajis Fyashe
18154, -- Ssslith

18554, -- Sharth Voldoun

18423, -- Cho'war the Pillager
18069, -- Mogor
18399, -- Murkblood Twin
18402, -- Warmaul Champion

22911 -- Vim'gol the Vile
);

-- ===========
-- EXTRA FLAGS
-- ===========

-- NOT_TAUNTABLE
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN (
22338, -- Arcubus Destroyer
21410, -- Blood Lord Zarath
20563, -- Grand Commander Ruusk
21639, -- Illidari Slayer
11980, -- Zuluhed the Whacked

20284, -- Dr. Boom

18945, -- Pit Commander

22357 -- Reth'hedron the Subduer
);


