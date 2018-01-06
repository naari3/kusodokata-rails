# frozen_string_literal: true

module ApplicationHelper
  def default_meta_tags
    {
      title: t("#{controller_path.tr('/', '.')}.#{action_name}.title", default: nil),
      site: t('meta.site.name'),
      separator: t('meta.site.separator', default: '-'),
      canonical: canonical_href,
      viewport: 'initial-scale=1',
      description: '変態糞土方による並外れた文才によって生み出された名文から新しい文章を生み出すアプリ',
      reverse: true,
      og: {
        title: :title,
        type: 'website',
        url: request.original_url,
        site_name: t('meta.site.name'),
        image: image_url('620.png'),
        description: :description,
        locale: 'ja_JP'
      }
    }
  end
end
