require 'redmine'

Rails.configuration.to_prepare do
  require_dependency 'issue_hook'
end

Redmine::Plugin.register :redmine_parent_due_prefer_nil do
  name 'Redmine Parent Due Prefer Nil Plugin'
  author 'Toshiyuki Goto'
  description 'prefer nil at due_date of issue of parent.'
  version '0.0.1'
  url 'https://github.com/ngyuki/redmine_parent_due_prefer_nil'
  author_url 'https://github.com/ngyuki'
end
