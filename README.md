# Odo example

An example application written with [Odo](https://github.com/tcoats/odo)

# Setup

```
bower install
npm install
cp config.sample.json config.json
```

This will install all bower packages and npm packages and create a `config.json` file from the sample.

# Run
```
./redis-server
nodemon run.website.js
nodemon run.projections.js
nodemon run.domain.js
```

This will run redis, the website service, the domain service and the projections service. Don't worry - you don't have to use these services exactly as set in the example, complete control is possible.