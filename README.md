gulp-outdent
===============

```
gulp = require 'gulp'
outdent = require 'gulp-outdent'

gulp.task 'indent-delete', ->
  gulp
    .src './htdocs/**/*.html'
    .pipe outdent()
    .pipe gulp.dest './'
```
