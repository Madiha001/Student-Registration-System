# Student-Registration-System
--------------------------------------------------------------------------
Mini student management system having features to register and manage students.

Project assigned by:

Khalid Hussain, Instructor at Sukkur IBA University,Sindh.

Project done by:

Depika, Student of BSCS-IV at Sukkur IBA University,Sindh.

Madiha, Student of BSCS-IV at Sukkur IBA University,Sindh.

-----------------------------------------[ INSTALLATION INSTRUCTIONS ]--

We have created this project on Windows using Netbeans IDE 8.2, Java jdk8 version 1.8.0_111, mysql provided by XAMPP(v3.2.4) server.
 
To run this project successfully, you will need the following:

01) jdk 8, if you don't have then download and install it on your machine from this link https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html 

02) XAMPP server for mysql database, if you don't have then download and install it on your machine from this link https://www.apachefriends.org/index.html

--------------------------------------------[ OPERATING INSTRUCTIONS ]--

01) Download our project from above GitHub repository by clicking on Code button above on right side then click on Download ZIP and then extract it.  

02) Open XAMPP control panel then click start button of MySQL.

03) Import database which we have creted for this project 'student_registration.sql'. 

There are two ways to import database to mysql server; through XAMPP or command line.

Through command line:

	Copy database file from our project folder which you have just downloaded, from this location --> Student-Registration-System-main/StudentRegistrationSystem/database

	Then go to C:/xampp/mysql/bin and paste it here.

	Now open cmd from this bin directory.

	Make connection with mysql using command: mysql -u root -p

	Now press enter, you will be asked for password for mysql, so if you have set password then enter password and click enter otherwise directly enter without password.

	Now import database using command : source student_registration.sql; (Now you have successfully imported the database.)

Through XAMPP:

	Open XAMPP control panel, click the start button of Apache and MySQL then click Admin button in front of MySQL. 
	
	It will direct you to the localhost, login from username: root and password; if you have set password then enter password otherwise press any key and click Go.  
	
	After that, go to import tab, click Choose File button and then navigate to the location where you have extracted the project folder and go to --> Student-Registration-System-main/StudentRegistrationSystem/database and select student_registration.sql file. 
	
	Click Open and then click Go button.
	
	Now you have successfully imported the database.
	
04) Now you are ready to run the project, we have provided the executable jar file of our project in Student-Registration-System-main/StudentRegistrationSystem/dist folder. Double click on StudentRegistrationSystem.jar to run it.

If you want to run the project through Netbeans, do the same till instruction # 03 then open Netbeans IDE if you don't have then download and install it on your machine from the link https://netbeans.org/downloads/8.2/rc/

After opening Netbeans IDE go to File --> Open Project --> then navigate to the location where you have extracted the project folder and go to --> Student-Registration-System-main/StudentRegistrationSystem and click Open Project.

You must add (mysql-j-connector) jar file in the libraries of this project in netbeans. The jar files are provided in Student-Registration-System-main\StudentRegistrationSystem\dist\lib folder.

After adding jar files to the project libraries, right click the project and select run.

After running it, you will have the login window. We have two admin accounts signed up for our project. login from any of the two. [username:madiha, password:12345], [username:depeeka, password:54321] or click sign up to make your own admin account.

If you choose sign up, this means you are going to be the admin of that application. You will be asked for username, and password to become admin.  

After logging in you will see another window, in which you will see different operations that will be performed by our application.

Operations inlcude add student, search student, update student, delete student, show students, show teachers, show courses, show departments.

This is all about our project. We hope you can run it properly.
