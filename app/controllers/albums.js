'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Album = models.album

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  Album.find({_owner: req.user})
    .then(albums => res.json({
      albums: albums.map((e) =>
        e.toJSON({ virtuals: true, user: req.user }))
    }))
    .catch(next)
}

const show = (req, res) => {
  if (req.user._id.toString() === req.album._owner.toString()) {
    res.json({
      album: req.album.toJSON({ virtuals: true, user: req.user })
    })
  } else {
    res.sendStatus(404)
  }
}

const create = (req, res, next) => {
  const album = Object.assign(req.body.album, {
    _owner: req.user._id
  })
  Album.create(album)
    .then(album =>
      res.status(201)
        .json({
          album: album.toJSON({ virtuals: true, user: req.user })
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.album.update(req.body.album)
    .then(() => res.sendStatus(204))
    .catch(next)
}

const destroy = (req, res, next) => {
  req.album.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate },
  { method: setModel(Album), only: ['show'] },
  { method: setModel(Album, { forUser: true }), only: ['update', 'destroy', 'addActivity', 'removeActivity', 'addLandmark', 'removeLandmark', 'addFood', 'removeFood', 'addComment', 'removeComment'] }
] })
