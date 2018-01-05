import { reload } from './reload'

export const actions = {
  reload: (e) => state => reload(state)
}
