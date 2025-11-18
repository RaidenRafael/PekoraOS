[THE PEKORA PROJECT] - [A GROUP PROJECT BY BLUEHOUSE STUDIO]

"こんぺこ、こんぺこ、こんぺこ！ホロライブ三期制の兎田ぺこらぺこ！どうも、どうも！"
"Konpeko, konpeko, konpeko! Hololive san-kisei no Usada Pekora-peko! doumo, doumo!"
- A Certain Holomember Named Usada Pekora From Hololive JP 3rd Gen

- Project Description 
 Pekora Operating System (PekoraOS or PekOs) Is Created From Being a Fan And
 Inspiration From A Virtual Youtuber (Vtuber) From Hololive (Cover Corp)
 Named Usada Pekora From Hololive JP (Japan) GEN (GENERATION) 3

 Pekora Operating System Is Desinged Towards Os Simulation Within Batch Script
 And Following The Style Of a Linux Like System But Modified And Filled With
 Hololive Names and References Within The System Simulator Itself And A Way
 To Test The Limits Of A Batch Scripting And Go Beyond What Simplicity You
 Can Do Inside a Simple Single Batch Script File

 But This Was Also My Trial Coding For Ongoing Real Pekora OS OSDEV
 Yes OsDev From Scratch (ie: ASSEMBLY, C# And C++) So This is Technically
 What The Real Pekora OS Would Look Like.

- Project Purpose
The Project's Purpose is to Test And See How Far We Could Take Batch Scripting And By Creating A
Mini OS Within Batch Script That Hold all Of Its Contents From the entire p:\ folder structure
and outputing its own batch file under p:\bin simulating a mini linux OS type, And has Followed All
Of The Project Requirements Which Are Listed Below And Where All Followed Correctly.

-File or folder backup automation
-System information display (CPU, memory, disk, etc.)
-User login simulation or menu-based tool
-File search and report generation
-Network connectivity checker (ping test with log results)

- List of Commands Used Plus Their Count
| Command                | Count |
| ---------------------- | ----- |
| **echo**               | 122   |
| **echo.** (blank echo) | 52    |
| **call**               | 67    |
| **for**                | 62    |
| **timeout**            | 52    |
| **set**                | 36    |
| **if**                 | 28    |
| **goto**               | 18    |
| **mkdir**              | 13    |
| **cls**                | 7     |
| **exit**               | 3     |
| **rem**                | 2     |
| **setlocal**           | 2     |
| **title**              | 1     |
| **mode**               | 1     |
| **rmdir**              | 1     |
| **cmd**                | 1     |
| **endlocal**           | 1     |

The Entire PekoraOS.bat Code line is 823 Lines Of Code

- Sample Output (with screenshots)

- Brief explanation of how the script works
When On First Launch The Batch Script Does a KAELA (HololiveID Gen3) FILE INTEGRITY CHECK, To See
If p:\ (root = \) Is Present, if not it would Initiate the First Run Setup, If p:\ Is Present
It Checks For a Flag if the setup was complete and not interupted, if the flag was found it boots
normaly, If Not The KAELA FILE INTEGRITY CHECK Removes the corrupted p:\ (root folder) and Re-run
the First Run Setup Once again

After Finishing Setup And Watching The KORONE (HololiveJP GAMERS) Bootloader Does A System Check Printing
Out Your System Specifications And Scans Then (this part is just simulated am not going to code ram countings)
and the System Spects Is From The User who runs it, its not a Static one

After KORONE Bootloader You Will Reach The Login Screen Where You Type Your Username And Password And Finaly
Enter The Pekora Terminal Or PekoBASH Or PekoShell And You Can Run Commands That Is Built In Or From The
p:\bin Folder!