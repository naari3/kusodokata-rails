import { _, shareTwitter } from './utils/share_twitter_url'

export const init = (state, actions) => {
  const kuso = JSON.parse(document.querySelector('#kuso-info').innerHTML)
  state.body = kuso.body
  state.uniqueId = kuso.unique_id
  state.shareTwitterUrl = shareTwitter({ text: state.body, url: `${location.href}${state.uniqueId}` })
}
