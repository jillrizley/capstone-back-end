'use strict'

const mongoose = require('mongoose')

const albumSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  comments: {
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

const Album = mongoose.model('Album', albumSchema)

module.exports = Album
