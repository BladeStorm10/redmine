Redmine::Plugin.register :redmine_repository_plugin do
  name 'Redmine Repository Plugin'
  author 'MR Faisal'
  description 'A plugin to add repository functionality to projects'
  version '0.1.1'
  url 'https://github.com/BladeStorm10/redmine'
  author_url 'Ananomous'
  requires_redmine version_or_higher: '5.1.3'
end
