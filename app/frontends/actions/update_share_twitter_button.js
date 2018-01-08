/* global twttr */

export const updateShareTwitterButton = () => {
  const renderedTwitterShareButtons = document.querySelectorAll('.twitter-share-button')
  for (let renderedTwitterShareButton of renderedTwitterShareButtons) {
    renderedTwitterShareButton.parentNode.removeChild(renderedTwitterShareButton)
  }

  const _twitterShareButton = document.querySelector('a._twitter-share-button')
  if (_twitterShareButton !== null) {
    const twitterShareButton = _twitterShareButton.cloneNode()
    twitterShareButton.className = 'twitter-share-button'
    document.querySelector('.share').appendChild(twitterShareButton)

    twttr.widgets.load()
  }
}
