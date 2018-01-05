const treat = (str, { replace = '' } = {}) => str.split(' ').join(replace)

export const shareTwitter = ({ text, url, hashtags, via, related, replyTo } = {}) => {
  const baseUrl = 'https://twitter.com/intent/tweet'
  const hasText = text ? `text=${treat(text, { replace: '%20' })}` : undefined
  const hasUrl = url ? `url=${url}` : undefined
  const hasHashtags = hashtags ? `hashtags=${treat(hashtags)}` : undefined
  const hasVia = via ? `via=${via}` : undefined
  const hasRelated = related ? `related=${related}` : undefined
  const hasReplyTo = replyTo ? `in-reply-to=${replyTo}` : undefined
  const arr = [hasText, hasUrl, hasHashtags, hasVia, hasRelated, hasReplyTo]
  const filtering = arr.filter(Boolean)
  const queries = filtering.join('&')

  return `${baseUrl}?${queries}`
}
