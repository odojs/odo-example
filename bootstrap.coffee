requirejs = require 'requirejs'
requirejs.config
	nodeRequire: require
	paths:
		odo: './node_modules/odo'
		local: './'
requirejs ['odo/bootstrap']
