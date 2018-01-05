export const reload = async (state, actions) => {
  actions.setLoading(true)
  actions.setBody(await fetch('/api/v1/kusos/new.json').then(res => res.json()).then(data => data.body))
  actions.setLoading(false)
}
