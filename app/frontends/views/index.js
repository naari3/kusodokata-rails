import { h } from 'hyperapp'
import { ReloadButton } from './reload-button'

export const view = (state, actions) =>
  <div>
    <ReloadButton state={state} actions={actions} />
  </div>
