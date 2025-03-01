Introduction
When you have a list of email addresses you want to compare to AD and see what email addresses are actually present in Active Directory, you can use this PS script.

This PS script will go through all emails in the list and compare to AD and produce 2 txt files including all email addresses found in AD and email addresses not found in AD.

1. Save this “EmailTitle.txt” to a folder. ex:) c:\kpw
-After you download file, unblock it and rename it to "EmailTitle.ps1" and place it into C:\kpw  (You can change the directory name of your choice)
 ![image](https://github.com/user-attachments/assets/d4a56f3a-2c26-423f-9dfc-42a89eb26ec1)

 ![image](https://github.com/user-attachments/assets/9fba1eda-0381-4c1d-b421-2b8762a9d6a9)

  
 
-Rename it to “EmailTitle.ps1” and unblock it. Move it to C:\kpw folder.
  ![image](https://github.com/user-attachments/assets/783818c1-976e-4140-b5ca-6b21eb96c127)

 -Place it into C:\kpw folder
 ![image](https://github.com/user-attachments/assets/06db1679-1e3e-4cbf-8fa2-7ab6a8c4d374)

 
 











2. Save your list into the same location and name it as "listhere.csv" ex:) c:\kpw\listhere.csv
-Make sure your CSV has following format. (One column and name as "Email") 
![image](https://github.com/user-attachments/assets/e7bf2219-3c0a-4ac5-a3ba-810eae39873a)

 
 
3. Execute the “EmailTitle.ps1” from the folder location.
 ![image](https://github.com/user-attachments/assets/e285e913-822c-49a6-bfc4-437d9de9a873)

 
 
4. Result file should be placed in the c:\kpw folder.
 ![image](https://github.com/user-attachments/assets/fbd65200-d403-4092-8f37-2c5e14e25014)

 
-This script will compare list with mail attribute and generate AILfound.txt/Mailnotfound.txt list.



-MAILfound.txt will include all matching email address or email proxy address.
 ![image](https://github.com/user-attachments/assets/2a4e2d9e-7c18-4609-aa9e-c996a8b4f99e)

 
-MAILnotfound.txt will show all none-matching email address or email proxy address.
  ![image](https://github.com/user-attachments/assets/77a3033b-b9e7-4477-a63b-a3a6bd21b36c)
 
 



-And it will add title to the email address match found. "User_Title.csv"
   ![image](https://github.com/user-attachments/assets/c7fc6494-f67c-440e-9698-382823726c4e)

 
-And it will generate output for proxy address match, but no Title pulled. 
   
 ![image](https://github.com/user-attachments/assets/36c534bf-ec0f-4911-82cd-c0afd7d02bef)


-Matching proxy address to AD user and generate output including Title and email address. "Proxy_User_Title.csv"
 ![image](https://github.com/user-attachments/assets/9468489d-29c0-4c6a-9673-2d5c31f9e781)

 
 
5. That's it.  Final two "User_Title.csv" and "Proxy_User_Title.csv" will include all matching email/proxy addresses with title and email address in nice CSV format.  
![image](https://github.com/user-attachments/assets/6226895b-1827-4594-b8ca-16f4dda2870b)

 
 
## You don't need to run this PS script in admin mode. Just user mode will be fine. ##
PS script Info  
![image](https://github.com/user-attachments/assets/dc113415-bfd4-452a-b0b8-70ed05fcd80d)


