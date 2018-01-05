import { h } from 'hyperapp'
import { ReloadButton } from './reload-button'
import { Kuso } from './kuso'

export const view = (state, actions) =>
  <div>
    <Kuso state={state} actions={actions} />
    <ReloadButton state={state} actions={actions} />
  </div>
