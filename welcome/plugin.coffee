define [
	'module'
	'odo/express'
	'odo/durandal'
], (module, express, durandal) ->
	class Welcome
		web: =>
			express.route '/views', express.modulepath(module.uri) + '/public'
			
			durandal.register 'views/welcome'
