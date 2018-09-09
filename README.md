# Cyber-Rambo [UNDER CONSTRUCTION]
==============
9/1/2018:
o PSM1 file for all model-like functions created (Things like functions that get processes)
o PSM1 file for all view-like functions created (Mainly menus and the presentation of things)



9/8/2018:
o Integrated all internal files together for modularity and readability.
o Still need to work on the outputs of all three menu choices.

Menu looks like this so far...
CYBER RAMBO
1. Analyze Host Based on Time Range
2. Get a Baseline of Host
3. View locations and commands of Common Prxocesses
==============

Intended to provide a blue-team/hunt-team with a way to parse through relevant information so that a timeline of malicious events is created.

Objectives:
1. Track a malicious/unwanted login.
  o Event ID 4624
  o
  
2. Track file gathering, file movement, file compression, file exfiltration, and file deletion.
  o Event ID 4656: A handle to an object was requested.
  o Event ID 4663: An attempt was made to access an object.
  o Event ID 4660: An object was deleted [Will not generate if file is protected]
  o Baseline critical directories


3. Track artifact cleanup by malicious user.
  o Event ID 4660: An object was deleted [Will not generate if file is protected]
  o Baseline prefetch directory.


Notes:
Tracking remotely logged-in events
1. Event ID 4624


Notes:
Tracking deletion [Should track who was logged on (4624)]
(Possible 4656: A handle to an object was requested.)
1. Event ID 4663: An attempt was made to access an object.
2. Event ID 4660: An object was deleted [Will not generate if file is protected]
