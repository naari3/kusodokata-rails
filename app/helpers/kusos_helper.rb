# frozen_string_literal: true

module KusosHelper
  def kuso_info
    {
      body: @kuso.body,
      unique_id: @kuso.unique_id
    }.to_json
  end
end
