require 'securerandom'

def get_uquine_name(name)
	uuid = SecureRandom.uuid
	return name + "_" + uuid[-10,10].to_s
end
def get_uquine_email(email)
	emails = email.split("@")
	uuid = SecureRandom.uuid
	return emails[0] +"."+  uuid[-10,10].to_s  + "@" + emails[1]
end