# frozen_string_literal: true

%w[
  db:migrate
  db:migrate:status
  db:schema:cache:clear
  db:schema:cache:dump
  db:schema:dump
  db:schema:load
  db:structure:dump
  db:structure:load
].each do |task|
  Rake::Task[task].clear
end

namespace :db do
  desc 'Creates the database, loads the schema, and initializes with the seed data (use db:reset to also drop the database first)'
  task setup: ['db:schema:load', :seed]

  task migrate: [:environment] do
    ridgepole(env: Rails.env)
    ridgepole(env: 'test') if Rails.env.development?
  end

  namespace :migrate do
    task status: [:environment] do
      ridgepole(env: Rails.env, dry_run: true)
    end
  end

  namespace :schema do
    task load: [:environment] do
      ridgepole(env: Rails.env)
      ridgepole(env: 'test') if Rails.env.development?
    end
  end

  private

  def ridgepole(env: Rails.env, dry_run: false)
    args = ['ridgepole', '-a', '-c', 'config/database.yml', '-f', 'db/Schemafile', '-E', env]
    args.push('--dry-run') if dry_run

    sh(*args)
  end
end
