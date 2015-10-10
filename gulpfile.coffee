gulp = require 'gulp'
seq = require 'run-sequence'

#
#
#
gulp.task 'default', -> seq 'init', 'curl', 'append', 'package', 'clean'


del = require 'del'

#
#
#
gulp.task 'init', -> del.sync ['./dist', './tmp']


argv = require('yargs').argv
exec = require 'gulp-exec'
gutil = require 'gulp-util'

#
#
#
gulp.task 'curl', ->

    if !argv.ver
        throw new gutil.PluginError '[curl]', 'Requires a valid version number e.g. --ver=#0.13.0'

    else
        v = argv.ver

    cdn = 'http://angular-ui.github.io/bootstrap'
    git = 'https://github.com/angular-ui/bootstrap'

    norm = 'ui-bootstrap'
    tpls = 'ui-bootstrap-tpls'

    gulp.src ''
    .pipe exec('mkdir ./tmp')
    .pipe exec("curl -o ./tmp/angular-bootstrap.js #{cdn}/#{norm}-#{v}.js")
    .pipe exec("curl -o ./tmp/angular-bootstrap.min.js #{cdn}/#{norm}-#{v}.min.js")
    .pipe exec("curl -o ./tmp/angular-bootstrap-tpls.js #{cdn}/#{tpls}-#{v}.js")
    .pipe exec("curl -o ./tmp/angular-bootstrap-tpls.min.js #{cdn}/#{tpls}-#{v}.min.js")
    .pipe exec("git clone #{git}.git ./tmp/src && cd ./tmp/src && git checkout tags/#{v} && cd ../..")


insert = require 'gulp-insert'

#
#
#
gulp.task 'append', ->

    gulp.src ['./tmp/*.js']
    .pipe insert.append('if(typeof module!==\'undefined\')module.exports=\'ui.bootstrap\';')
    .pipe gulp.dest('./tmp')


#
#
#
gulp.task 'package', ->

    gulp.src ['./tmp/*.js']
    .pipe gulp.dest('./dist')

    gulp.src ['./tmp/src/template/**/**.*']
    .pipe gulp.dest('./dist/template')


#
#
#
gulp.task 'clean', -> del.sync ['./tmp']