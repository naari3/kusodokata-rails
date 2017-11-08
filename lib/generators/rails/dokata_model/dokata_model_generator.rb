# frozen_string_literal: true

require 'rails/generators/active_record/model/model_generator'

module Rails
  module Generators
    hide_namespace 'dokata_model'

    class DokataModelGenerator < ActiveRecord::Generators::ModelGenerator
      source_root File.expand_path('../templates', __FILE__)

      def create_migration_file
        template 'schema.rb', File.join('db/schema', class_path, "#{file_name}.rb")
      end
    end
  end
end
