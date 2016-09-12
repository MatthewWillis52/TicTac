*** Settings ***
Library           keywords.TicTacToeKeywords

*** Keywords ***
Check Location  [arguments]  ${row}  ${col}  ${mark}
    ${m}=   Get Mark    ${row}  ${col}
    Should Be Equal     ${m}    ${mark}
    
Winner Should Be    [arguments]     ${mark}
    ${w}=   Get Winner  
    Should Be Equal     ${w}    ${mark}
	
 
*** Test Cases ***
Win Diagonally As X
	Start New Game
	Mark Location	1	1
	Check Location	1	1	X
	Mark Location	0	1
	Check Location	0	1	O
	Mark Location	0	0
	Check Location	0	0	X
	Mark Location	0	2
	Check Location	0	2	O
	Mark Location	2	2
	Check Location	2	2	X
	Winner Should Be	X
	
	
	