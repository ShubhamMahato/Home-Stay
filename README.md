# Home-Stay
/-----------------------How to install HomeStay------------------/
1. Import project into ecplise.

2.First check the version of mysql workbench mine is 8.0. So according to 
version of workbench i am using the mysql connector of version 8.0.15. You
should check according to your workbench  which one will work for you.

3.Copy all the jars from the libraray and save it into some folder.

4.Go to Build path and export all those jars.

5.And remove the my sql connector if your workbench version is not as mine
from build path and also from libaray.

6.Export your own mysql connector into build path and lib.

7.Now Change the passowrd in the dispatcher-servlet.xml accordin to your
mysql workbench password.

8.Now make a schema named ctsuser in your mysql.

9.There is file in my git hub name sql.sql import that file into the 
mysql workbench and first run the create query of it then the insert query.

10.Now you can run the project.
