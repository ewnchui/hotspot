io.sails.url = 'http://abc'
io.sails.path = "/hotspot/socket.io"
io.sails.useCORSRouteToGetCookie = false

module.exports =
	isMobile: ->
		/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)
	isNative: ->
		/^file/i.test(document.URL)
	platform: ->
		if @isNative() then 'mobile' else 'browser'
	authUrl:	'https://abc.com'

	serverUrl: (path = @path) ->
		"https://abc.com/#{@path}"
	path: 'hotspot'		
	server:
		rest:
			urlRoot:	'https://abc.com/org'
		io:
			urlRoot:	'https://abc.com/im.app'
	oauth2:
		opts:
			authUrl: "https://abc.com/org/oauth2/authorize/"
			response_type:	"token"
			scope:			"https://abc.com/org/users"
			client_id:		'util.auth.dev'
	map:
		coords:
			latitude:	22.36633475
			longitude:	114.08627915
		distance:	2
		zoom:	12
		labelAnchor:	"100 0"
	mapSize:
		height:	500	

									
