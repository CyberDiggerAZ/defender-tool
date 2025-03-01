Introduction

I am in SANS SEC530 *Defensible Security Architecture" class this week.  One of my favorite and best SANS' instructor Ismael Valenzuela is teaching the class and this class is already giving me so much inspiration to enhance cyber security defense posture in alignment of Zero Trust Strategy.  There are so many layers and components within the Defensible Security Architecture and Threat modeling based "Think Red, Act Blue" is one of the foundational component to build an Organization's strategy.  In that spirit, I'd like to share a tool I build to quickly locate matching active account in an organization from accounts/emails listed  in Breach/Threat Intel report. Contributing local Cyber Security community is another way for us to march toward defensible security architecture together,  Detailed instruction and tool (PS script) is attached here. 

When you have a list of email addresses you want to compare to AD and see what email addresses are actually present in Active Directory, you can use this PS script.

This PS script will go through all emails in the list and compare to AD and produce 2 txt files including all email addresses found in AD and email addresses not found in AD.




