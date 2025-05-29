-- Asric & Jadaar - Event
-- Patch 2.3.0 (Final TBC) Moved from the Lower City to the World's End Tavern.
-- Patch 3.2.0 (Final WoTLK) Moved from Dalaran to the Argent Tournament Grounds.

/* TBC Final
-- emotes and timing guessed
-- Arguments at World's End Tavern
-- 1st:
23429 Peacekeeper Jadaar says: I must have taken leave of my senses, allowing a Scryer to aid in such a delicate operation...
23430 Investigator Asric says: My services were rendered. The protection of the city is not my jurisdiction. I believe that's why they call you "peacekeepers?"
23431 Peacekeeper Jadaar says: Had we been fully handling the investigation, I assure you, the evidence would have remained safe. Instead we used your highly questionable methods...
23432 Investigator Asric says: Of course. My methods are questionable. It was my methodology, I'll note, that exposed that "Griftah" as a fraud in the first place! You had only to keep the peace, and you failed in that simple task!
23433 Peacekeeper Jadaar says: [Draenei] Ashjrakamas nagasraka zekul (Translation: Incompetent, sniveling dandy.)
23434 Investigator Asric says: [Thalassian] Shan're dor'ano shan're (Translation: Pompous, uptight windbag.)
23435 Peacekeeper Jadaar and Investigator Asric glare at each other silently, their eyes narrowed.
-- 2nd:
23265 Peacekeeper Jadaar says: How could you have lost the evidence?!
23266 Investigator Asric says: I thought it was secure! If your peacekeepers had the clout to control the thieves of this city, this wouldn't have happened!
23267 Peacekeeper Jadaar says: You blame the peacekeepers for your failure? You were entrusted with a simple task. The troll was obviously a fraud!
23302 Investigator Asric says: And you're entrusted with keeping the city safe! How am I supposed to perform my simple task if the streets are thick with lowlifes? I can't spit in Shattrath without hitting some gruby burglar.
23303 Investigator Asric says: ...not that I would spit, of course.
23319 Peacekeeper Jadaar says: I was trying to oust one of those lowlifes you so loathe permanently! Next time, I'll be certain to specify that I require a competent investigator!
23320 Investigator Asric says: [Thalassian] Ri osa FULO talah banthalos (Translation: Do you EVER cease prattling?)
23321 missing emote? "%s scowls and looks away."
23322 Investigator Asric says: [Thalassian] Diel nei dorNi ala ni ethala do ala ri shar diel mandalas (Translation: That man didn't pay me enough to put up with this blowhard...)
23323 missing emote? "%s frowns at Investigator Asric and arches a brow."
23324 Peacekeeper Jadaar says: What was that?
23325 Investigator Asric says: Oh, nothing. Merely thinking aloud.
*/

-- Final WoTLK
-- remove them from TBC area & Dalaran
UPDATE broadcast_text SET `ChatTypeID` = 2 WHERE `Id` IN (23435,23321,23323); -- Emotes

-- Jadaar 23079 & Asric 23719 - RP
DELETE FROM dbscript_random_templates WHERE `id` = 20382;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20382,1,21152,0,'Part of Jadaar 23079 EAI: - script 1 (TBC event - Jadaar 23079 & Asric 23719 - RP 1)'),
(20382,1,21153,0,'Part of Jadaar 23079 EAI: - script 2 (TBC event - Jadaar 23079 & Asric 23719 - RP 2)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21152 AND 21153;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21152
(21152,1,31,23719,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: search for 23719'),
(21152,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: active'),
(21152,101,21,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy active'),
(21152,200,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_TALK
(21152,300,0,0,0,0,0,0,0x04,23429,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21152,5000,1,6,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_QUESTION
(21152,5100,0,0,0,0,23719,20,7,23430,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21152,10000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_TALK
(21152,10100,0,0,0,0,0,0,0x04,23431,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21152,15000,1,5,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_EXCLAMATION
(21152,15100,0,0,0,0,23719,20,7,23432,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21152,20000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_TALK
(21152,20100,0,0,0,0,0,0,0x04,23433,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21152,25000,1,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_TALK
(21152,25100,0,0,0,0,23719,20,7,23434,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21152,30000,0,0,0,0,0,0,0x04,23435,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: textemote'), -- TEXTEMOTE
(21152,35000,21,0,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy unactive'),
(21152,35100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: unactive'),
-- 21153
(21153,1,31,23719,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: search for 23719'),
(21153,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: active'),
(21153,101,21,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy active'),
(21153,200,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_QUESTION
(21153,300,0,0,0,0,0,0,0x04,23265,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21153,5000,1,5,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_EXCLAMATION
(21153,5100,0,0,0,0,23719,20,7,23266,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,10000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_EXCLAMATION
(21153,10100,0,0,0,0,0,0,0x04,23267,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21153,15000,1,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_TALK
(21153,15100,0,0,0,0,23719,20,7,23302,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,20000,1,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_TALK
(21153,20100,0,0,0,0,23719,20,7,23303,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,25000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_EXCLAMATION
(21153,25100,0,0,0,0,0,0,0x04,23319,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21153,30000,1,6,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_QUESTION
(21153,30100,0,0,0,0,23719,20,7,23320,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,30200,0,0,0,0,23719,20,7,23321,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXTEMOTE
(21153,35000,1,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_TALK
(21153,35100,0,0,0,0,23719,20,7,23322,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,35200,0,0,0,0,23719,20,7,23323,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXTEMOTE
(21153,40000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: emote'), -- EMOTE_ONESHOT_QUESTION
(21153,40000,0,0,0,0,0,0,0x04,23324,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: say'), -- TEXT
(21153,45000,1,1,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy emote'), -- Buddy EMOTE_ONESHOT_TALK
(21153,45100,0,0,0,0,23719,20,7,23325,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy say'), -- TEXT
(21153,50000,21,0,0,0,23719,20,7,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: buddy unactive'),
(21153,50100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Jadaar 23079 EAI: unactive');

