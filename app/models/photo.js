'use strict'

const mongoose = require('mongoose')

const photoSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  url: {
    type: String,
    require: true
  },
  albumId: {
    type: String,
    require: true
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true,
  toJSON: {
  }
})

const Photo = mongoose.model('Photo', photoSchema)

module.exports = Photo
