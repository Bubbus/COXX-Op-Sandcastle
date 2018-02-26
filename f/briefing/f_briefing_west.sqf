// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: WEST

// ====================================================================================

//Creating simple tasks.
//Previous examples for task creation were needlessly complicated, they don't need to be. Whilst the completion of one is handled by 
//triggers in game, it can sometimes be enough to just have them be present on a players journal, it directs them, and keeps players on task.

//It is good practice to create them in the sides briefing file, as this means it seperates them neatly, without the creation of further files.

//Tasks follow this style:

//[civilian,["task1"],["Do this and you get a cookie","Earn Cookie","cookiemarker"],[0,0,0],1,2,true] call BIS_fnc_taskCreate
//[west,["task2"],["Good luck finding this cookie","Find Cookie","cookiemarker2"],objNull,1,3,true] call BIS_fnc_taskCreate //Task without a map location

//However, we don't use the civilian or west terms, as this is the western briefing file, instead, we can do something like this:

//[group player, "AANorth", ["Destroy the AA present in Northern Aliabad", "Destroy the AA", "AANorth"], "AANorth", true] call BIS_fnc_taskCreate;
//[group player, "AASouth", ["Destroy the AA present in Southern Aliabad", "Destroy the AA", "AASouth"], "AASouth", true] call BIS_fnc_taskCreate;

//The two above would create two tasks for the Blufor team, it would create tasks for any player who also has this file directed at them, this is why 
//it is better to handle tasks in the side's relevant briefing file. For the completion of tasks, refer to the trigger present on the framework's mission.sqm 
//in game.
// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
*** Insert mission credits here. ***
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
* Use Recon units to rapidly traverse the island and identify incoming threats.
<br/>
* Use troop transports to respond quickly to threats and defeat them before they reach the shore.
<br/>
* If any enemy units reach the shore, eliminate them without compromising the ongoing shore defense effort.
<br/>
* Await extraction by the Chernarus Air Force.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend the island until extraction!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Utes is a small strategic island south of Chernarus, in the Green Sea. Until recently, Chernarus served as a buffer state between Russia and NATO but a series of annexations by Russia has forced a NATO decision to secure Utes due to its strategic importance.
<br/>
NATO has issued an ultimatum to the Utes Defense Force to offer no resistance, but Chernarussian leadership cannot afford to lose more ground in the face of a growing nationalist sentiment.
<br/>
The UDF is prepared to fight and die for this land but a total wipeout will be a massive symbolic loss for Chernarus, whose leadership appears helpless as their country is crushed between two powers.
<br/>
The UDF are therefore ordered to hold the island until extraction by air - if they can last long enough. State media is ready to present the battle as a victory to the people and call them to arms under this government's leadership - but NATO must pay dearly for this land.
"]];

// ====================================================================================