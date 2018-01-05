import {h} from 'hyperapp'

export const ReloadButton = ({actions}) =>
  <button
    class='button button-small button-outline'
    onclick={actions.reload}>🔃
  </button>
