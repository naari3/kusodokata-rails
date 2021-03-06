import { reload } from './reload'
import { setKuso, setLoading } from './sets'
import { updateShareTwitterUrl } from './update_share_twitter_url'

export const actions = {
  reload: e => async (state, actions) => reload(state, actions),
  setKuso: kuso => setKuso(kuso),
  setLoading: isLoading => setLoading(isLoading),
  updateShareTwitterUrl: () => state => updateShareTwitterUrl(state)
}
