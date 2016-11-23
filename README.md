TBC-DB for CMaNGOS-TBC
======================
A Content Database for [CMaNGOS-TBC][10], and *World of Warcraft Client Patch
2.4.3* - It Is Compatible Only With Client 2.4.3 (build 8606)

**TBC-DB** is released under the GPL v2.  The file (`LICENSE.mdown`)
**must** be a part of any redistributable packages made from this software.  No
licenses should be removed from this software if you are making redistributable
copies.

Compatibility
-------------
The *TBC-DB* database is compatible with [cmangos-tbc] core only.

Getting started
---------------
The basic principle behind this database repository is to have a single SQL file
holding every table in the database. When something is changed into the database
the modification is done by adding small SQL update files placed into the `updates` directory.
Every time a user (that would be you or TBC-DB Developers) wishes to change something into the database, he/she
have to create and add the right SQL file. This helps tracking what changes are made, when and where.

Installation
------------
**TBC-DB** is the main content database for: `mangos` where the world is defined
with creatures, items, objects, quests, etc.

It must be applied after creating the `mangos` database from your CMaNGOS core distribution [cmangos-tbc] from [CMaNGOS Project].

For Easy Installation Edit The Following Windows Batch File `./Windows_Install_Script.bat` if you are a Windows User and configure
the Installation Options Setting Your MYSQL Database Names, Passwords and Source Folders.

It will provide you a Menu With Various Installation Options and Configurations That Have Greatly Simplified The Process.

For a full installation guide, please refer to [CMaNGOS installation instructions][14].

And if something goes wrong?
----------------------------
The best way to submit an issue is to use tbc-db github.


