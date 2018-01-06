import 'whatwg-fetch'

export const reload = async (state, actions) => {
  actions.setLoading(true)
  actions.setKuso(await fetch('/api/v1/kusos/new.json').then(res => res.json()).then(data => {
    return { body: data.body, uniqueId: data.unique_id }
  }))
  actions.updateShareTwitterUrl()
  actions.updateShareTwitterButton()
  actions.setLoading(false)
}
