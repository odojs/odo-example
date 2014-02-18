requirejs.config
	# work out a way for each odo plugin to insert itself here?
	paths:
		text: 'requirejs-text/text'
		durandal: 'durandal/js'
		plugins: 'durandal/js/plugins'
		transitions: 'odo/durandal/transitions'
		components: 'odo/durandal/components'
		knockout: 'knockout.js/knockout'
		# I've made a change to this library so it's copied locally. A pull request is in :)
		'ko.validation': 'ko-validation/dist/knockout.validation.min'
		bootstrap: 'bootstrap/dist/js/bootstrap.min'
		bootstrapcss: 'bootstrap/dist/css/bootstrap.min'
		jquery: 'jquery/dist/jquery.min'
		animatecss: 'animate.css/animate.min'
		fontawesome: 'font-awesome/css/font-awesome.min'
		
		uuid: 'node-uuid/uuid'
		q: 'q/q'
		
		odo: 'odo'
		'local/plugins': 'plugins'
		'local/widgets': 'widgets'
		
		mousetrap: 'mousetrap/mousetrap.min'

	map:
		'*':
			css: 'require-css/css.min'

	shim:
		bootstrap:
			deps: ['jquery']
			exports: 'jQuery'
		'ko.validation':
			deps: ['knockout']
			
		mousetrap:
			exports: 'Mousetrap'
	
	# don't cache in development
	urlArgs: 'v=' + (new Date()).getTime()

define [
	'durandal/system'
	'durandal/app'
], (system, app) ->
		#system.debug yes
		app.title = 'Example'
		app.configurePlugins
			router: yes
			dialog: yes
			widget: yes
		
		# components
		requirejs [
			'odo/durandal/plugins/router'
			'odo/durandal/plugins/dialog'
			'odo/durandal/plugins/bootstrap'
			'odo/durandal/plugins/validation'
			'odo/durandal/plugins/q'
			'odo/durandal/plugins/mousetrap'
			'odo/durandal/plugins/viewLocator'
			'odo/durandal/plugins/widget'
			'css!bootstrapcss'
			'css!fontawesome'
			'css!animatecss'
			'css!odo/durandal/odo'
			'css!example'
		], ->
			
			$.get('/odo/components').then (components) ->
				requirejs components, ->
					app.start().then -> app.setRoot 'shell'