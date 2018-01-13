import {h} from 'hyperapp'

export const ShareTwitterButton = ({state}) =>
  <a
    class='button share twitter'
    target='_blank'
    rel='noopener'
    href={state.shareTwitterUrl}>
    <i class='icon twitter'></i>
  </a>
