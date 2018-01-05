import { reload } from './reload'

export const actions = {
  reload: e => async (state, actions) => reload(state, actions),
  setBody: body => ({ body }),
  setLoading: isLoading => ({ isLoading })
}
