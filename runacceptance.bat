cd acceptance
javac -cp .;..\build\classes\main TicTacToeKeywords.java
java -cp .;..\build\classes\main;C:\RobotFramework\robotframework-3.0.jar org.robotframework.RobotFramework TicTacToeTests.txt
cd ..
pause