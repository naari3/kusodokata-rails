import {h} from 'hyperapp'

export const ReloadButton = ({state, actions}) =>
  <button
    class={'button is-accent is-outlined ' + (state.isLoading ? 'is-disabled' : '')}
    onclick={actions.reload}
    disabled={state.isLoading}>{state.isLoading ? 'ああ＾～' : 'もう一度やりたいぜ。'}
  </button>
