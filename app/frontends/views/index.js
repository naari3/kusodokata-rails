import { h } from 'hyperapp'
import { Kuso } from './kuso'
import { ReloadButton } from './reload-button'
import { ShareTwitterButton } from './share-twitter-button'

export const view = (state, actions) =>
  <div>
    <div class="main">
      <Kuso state={state} actions={actions} />
    </div>
    <div class="foot">
      <ReloadButton state={state} actions={actions} />
      <ShareTwitterButton state={state} actions={actions} />
    </div>
  </div>
