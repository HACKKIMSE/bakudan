from getpass import getpass
import os
import time
   passdef menu():
      while True:
           print("")
           os.system("clear")
           os.system('print | date')
           print("\033[1;93m")
           print("\033[1;93m")
           print("Your System LOCKED")
           print("")
           try:
                x = str(input('\033[1;92mUsername \033[1;93m: '))
                print("")
                e = getpass('\033[1;92mPassword \033[1;93m: ')
                print ("")
                if x=="root" and e=="root":
                   print('accessing....')
                   time.sleep(1)
                   os.system('clear')
                   print('')
                   print("")
                   break
                else:
                      print("")
                      print("")
                      print("")
                      print("")
                      print("\033[1;91m     Wrong Password or Username")
                      time.sleep(2)
                      print("")
           except Exception:
                      
                      print("")
                      print("")
                      print("")
                      print("")
                      print("")
                      print("\033[1;91m     Wrong Password or Username")
                      time.sleep(2)
           except KeyboardInterrupt:
                      print("")
                      os.system('killall -9 com.termux')
                      print("")
                      print("")
                      print("")
                      print("")
                      print("\033[1;91m     Wrong Password or Username")
                      time.sleep(2)
