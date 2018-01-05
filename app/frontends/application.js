// any codes here...
import 'babel-polyfill'
import domready from 'domready'

import { h, app } from 'hyperapp'

import { actions } from './actions'
import { state } from './state'
import { view } from './views'

import { init } from './init'


require('classlist-polyfill')

domready(() => {
  init(state, actions)
  app(state, actions, view, document.getElementById('app'))

})

history.replaceState('', '', '/')
