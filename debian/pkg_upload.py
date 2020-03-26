#!/usr/bin/env python3
 
import json
import os


import subprocess
def excuteCommand(com): 
	ex = subprocess.Popen(com, stdout=subprocess.PIPE, shell=True) 
	out, err = ex.communicate() 
	status = ex.wait() 
	#print("cmd in:", com) 
	#print("cmd out: ", out.decode()) 
	return out.decode()

com = 'ls *.deb > pkg.txt'
print("com = ", com)
tmp = excuteCommand(com)


f = open('pkg.txt')
pkg = f.read()
f.close()
print("pkg = ", pkg)
pkg = pkg.split('\n')
print("len = ", len(pkg))
com = ''
i=0

for i in range(len(pkg)):
	if (pkg[i] != ""):
		com = "curl -v -u admin:admin -X POST http://192.168.0.27:8081/service/rest/v1/components?repository=apt-hosted -F apt.asset=@"+(pkg[i])
		print("com = ", com)
		tmp = excuteCommand(com)
	i= i+1


com = 'rm pkg.txt'
print("com = ", com)
tmp = excuteCommand(com)
