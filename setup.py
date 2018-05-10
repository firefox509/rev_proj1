import subprocess

print('Enter Services to install (http ftp dns sql)')
opts = input()

if 'http' in opts.split():
  subprocess.call("./http.sh")

if 'ftp' in opts.split():
  subprocess.call("./ftp.sh")

if 'dns' in opts.split():
  subprocess.call("./dns.sh")

if 'sql' in opts.split():
  subprocess.call("./sql.sh")





