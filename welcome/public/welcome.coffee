defineQ ['knockout', 'plugins/router', 'components/dialog'], (ko, router, Dialog) ->
	router.map
		route: ''
		moduleId: 'views/welcome'
	
	class Welcome
		title: 'Welcome'
		
		constructor: ->
			@value = ko.observable 0.3