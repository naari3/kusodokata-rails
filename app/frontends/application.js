// any codes here...
import 'babel-polyfill'
import domready from 'domready'

import { h, app } from 'hyperapp'

import { actions } from './actions'
import { state } from './state'
import { view } from './views'

require('classlist-polyfill')

domready(() => {
  state.body = document.querySelector('div.kuso').textContent
  app(state, actions, view, document.getElementById('app'))
})

history.replaceState('', '', '/')
