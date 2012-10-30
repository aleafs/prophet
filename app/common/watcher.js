/* vim: set expandtab tabstop=2 shiftwidth=2 foldmethod=marker: */

"use strict";

exports.create = function (options) {

  var callbacks = {};

  var _me = {};

  _me.emit = function (key) {
  };

  _me.watch = function (key, cb) {
    if (!callbacks[key]) {
      callbacks[key] = [];
    }
    callbacks[key].push(cb);
  };

  return _me;
};

