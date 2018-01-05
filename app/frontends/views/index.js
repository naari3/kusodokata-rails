import { h } from 'hyperapp'
import { ReloadButton } from './reload-button'
import { Kuso } from './kuso'

export const view = (state, actions) =>
  <div>
    <div class="main">
      <Kuso state={state} actions={actions} />
    </div>
    <div class="foot">
      <ReloadButton state={state} actions={actions} />
    </div>
  </div>
