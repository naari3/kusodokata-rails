// any codes here...
import 'babel-polyfill'
import domready from 'domready'

import { h, app } from 'hyperapp'

import { actions } from './actions'
import { view } from './views'

require('classlist-polyfill')

const state = {
  body: ''
}

domready(() => {
  app(state, actions, view, document.getElementById('reload'))
})

history.replaceState('', '', '/')
