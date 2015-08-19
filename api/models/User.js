/**
* User.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/
var crypto = require('crypto');

module.exports = {

  tableName: 'users',
  attributes: {
    email: {
      type: 'string',
      size: 60,
      required: true,
      unique: true
    },
    password: {
      type: 'string',
      size: 50,
      required: true
    },
    name: {
      type: 'string',
      size: '50'
    }
  },
  beforeCreate: function (values, cb) {
    var shasum = crypto.createHash('sha1');
    shasum.update(values.password);
    values.password = shasum.digest('hex');
    cb();
  }
};

