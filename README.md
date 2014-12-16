# note

This is a simple NPM package wrapper for http://angular-ui.github.io/bootstrap

## building

In order to run the build process, you'll need to have npm, gulp installed globally.  Then install the project dependencies.

**install npm dependecies**

`npm install`

While the intent is to maintain pairity with the various tags/versions found at https://github.com/angular-ui/bootstrap, you may want to build/modify your own version.
In order to build against a different version you can run the gulp build w/ a version argument: 

`gulp --ver=0.12.0`

## usage

**example**

```javascript
require('angular-bootstrap-npm');
```
