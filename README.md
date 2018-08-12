# Cyber-Rambo

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
