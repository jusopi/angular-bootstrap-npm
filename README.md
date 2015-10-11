#### update - Oct 10, 2015

*This repo has been relocated to [jusopi/angular-bootstrap-npm](https://github.com/jusopi/angular-bootstrap-npm)*

# angular-bootstrap-npm

This is a simple NPM package wrapper for http://angular-ui.github.io/bootstrap

## usage

**example**

```javascript
require( 'angular-bootstrap-npm' );

angular.module( 'app', [ 'ui.bootstrap' ]);

//you can also use the module as the module name, e.g.

angular.module( 'app', [ require( 'angular-bootstrap-npm' )])
```

#### using the HTML template files

The default project file utilizes ui.bootstrap's build that includes the directive templates via `$templateCache`.  If for some reason you want direct access to the template HTML files, you can do the following:

**example**

```javascript
//this file doesn't make use of angular's $templateCache
require( 'angular-bootstrap-npm/dist/angular-bootstrap.js')
```

## building

In order to run the build process, you'll need to have npm, gulp installed globally.  Then install the project dependencies.

**install npm dependecies**

`npm install`

While the intent is to maintain pairity with the various tags/versions found at https://github.com/angular-ui/bootstrap, you may want to build/modify your own version.
In order to build against a different version you can run the gulp build w/ a version argument: 

`gulp --ver=0.14.0`

One thing to note is that your command line may act unresponsive as the build process for ui.bootstrap is quite extensive.  Also it may open a browser window during testing.


```

## license

The MIT License (MIT)

Copyright (c) 2014 Neohapsis Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
