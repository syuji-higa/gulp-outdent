var File, through;
through = require('through2');
File = require('gulp-util').File;
module.exports = function(opts) {
  var transform;
  transform = function(file, encode, callback) {
    var afterContents, beforeContents;
    beforeContents = file.contents.toString();
    afterContents = beforeContents.replace(new RegExp("^[\t| ]+", 'gm'), '');
    file.contents = new Buffer(afterContents, 'utf-8');
    this.push(file);
    return callback();
  };
  return through.obj(transform);
};
