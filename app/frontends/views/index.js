import { h } from 'hyperapp'
import { Kuso } from './kuso'
import { ReloadButton } from './reload-button'
import { ShareTwitterButton } from './share-twitter-button'

export const view = (state, actions) =>
  <div>
    <main>
      <Kuso state={state} actions={actions} />
    </main>
    <footer>
      <div class="reload">
        <ReloadButton state={state} actions={actions} />
      </div>
      <div class="share">
        <ShareTwitterButton state={state} actions={actions} />
        <a
          class='twitter-share-button'
          href={state.shareTwitterUrl}>
        </a>
      </div>
    </footer>
  </div>
