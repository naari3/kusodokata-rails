import {h} from 'hyperapp'

export const ShareTwitterButton = ({state, actions}) =>
  <a
    class='button twitter'
    href={state.shareTwitterUrl}>Twitter
  </a>
