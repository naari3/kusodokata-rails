import { _, shareTwitter } from '../utils/share_twitter_url'

export const updateShareTwitterUrl = (state) => ({
    shareTwitterUrl: shareTwitter({ text: state.body, url: `${location.href}${state.uniqueId}` })
  })
