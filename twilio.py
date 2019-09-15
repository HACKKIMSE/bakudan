import os
import sys
import time
from twilio.rest import TwilioRestClient

account_sid = os.environ['ACd9567846e67bfaf0b8c9ae8dae081167']
auth_token = os.environ['c4c064ce6429f8077d920e2726fadf45']
from_number = os.environ['+12093308243']

client = TwilioRestClient(account_sid, auth_token)

recipient = sys.argv[1]
message = sys.argv[2]
if len(sys.argv) == 4:
	message_count = int(sys.argv[3])
else:
	message_count = 1

for x in range(0, message_count):
	message = client.messages.create(
		body=str(message),
		to=str(recipient),
		from_=str(from_number))
	print str(x + 1) + " message(s) sent!"
	print "Message SID: " + message.sid
	time.sleep(1)
