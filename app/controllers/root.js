'use strict'

const controller = require('lib/wiring/controller')

/* GET home page. */
const root = (req, res) => {
  res.json({
    index: {
      title: 'capstone-back-end',
      environment: req.app.get('env')
    }
  })
}

module.exports = controller({
  root
})
