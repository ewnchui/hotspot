agent = require 'https-proxy-agent'

module.exports =
	hookTimeout:	400000
	geo:
		url: 'http://nominatim.openstreetmap.org/reverse'
		addressUrl:	'http://nominatim.openstreetmap.org/search/'	
	port:			1337
	
	oauth2:
		
		verifyURL:			"https://mob.myvnc.com/org/oauth2/verify/"
		tokenURL:			"https://mob.myvnc.com/org/oauth2/token/"
		scope:				["https://mob.myvnc.com/org/users"]
		userURL:			"https://mob.myvnc.com/org/api/users/"	
		
	promise:
		timeout:	10000 # ms

	models:
		connection: 'mongo'
		migrate:	'alter'
	
	connections:
		mongo:
			adapter:	'sails-mongo'
			driver:		'mongodb'
			host:		'hotspot_mongo'
			port:		27017
			user:		''
			password:	''
			database:	'hotspot'	
			
	log:
		level: 'silly'
		
			