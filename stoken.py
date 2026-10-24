
from itsdangerous import URLSafeTimedSerializer
salt='otpverify'
def entoken(data):
    serializer=URLSafeTimedSerializer('divya@123')
    return serializer.dumps(data,salt=salt)
def dtoken(data):
    serializer=URLSafeTimedSerializer('divya@123')
    return serializer.loads(data,salt=salt)