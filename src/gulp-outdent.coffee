through = require 'through2'
{ File } = require 'gulp-util'
# { assign, clone } = require 'lodash'

# defOpts = {}

module.exports = (opts) ->

  # {} = assign clone(defOpts), opts

  transform = (file, encode, callback) ->

    beforeContents = file.contents.toString()

    afterContents = beforeContents
      .replace(new RegExp("^[\t| ]+", 'gm'), '')

    file.contents = new Buffer afterContents, 'utf-8'

    @push file
    callback()

  # flush = (callback) ->
  #   callback()

  return through.obj transform#, flush
