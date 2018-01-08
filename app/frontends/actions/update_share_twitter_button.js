/* global twttr */

export const updateShareTwitterButton = () => {
  const renderedTwitterShareButton = document.querySelector('.twitter-share-button')
  if (renderedTwitterShareButton !== null) renderedTwitterShareButton.parentNode.removeChild(renderedTwitterShareButton)

  const _twitterShareButton = document.querySelector('a._twitter-share-button')
  if (_twitterShareButton !== null) {
    const twitterShareButton = _twitterShareButton.cloneNode()
    twitterShareButton.className = 'twitter-share-button'
    document.querySelector('.share').appendChild(twitterShareButton)

    twttr.widgets.load()
  }
}
