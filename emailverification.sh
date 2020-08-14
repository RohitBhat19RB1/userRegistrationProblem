#!/bin/bash
#this branch is not merged with the main branch because this branch is not adding
#anything upto the main code . It is just created to verify the email pattern

read -p "Enter your email id ---->" email
pattern1="^([a-z0-9\_\.\-\+]+)@([A-Za-z0-9]+)\.([a-z,]+)(\.[A-Za-z0-9,]+)?$"
if [[ $email =~ $pattern1 ]]
then
        echo mail-id is approved
else
        echo mail-id not approved
        exit
fi

OUTPUT:
      VERIFICATION-->

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc@yahoo.com,
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc-100@yahoo.com,
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc.100@yahoo.com
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc111@abc.com,
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc-100@abc.net,
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc.100@abc.com.au
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc@1.com,
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc@gmail.com.com
mail-id is approved

rohit@DESKTOP-2LKTJR9 MINGW64 ~/Desktop/TerminalCommands
$ ./xyz.sh
Enter your email id ---->abc+100@gmail.com
mail-id is approved
