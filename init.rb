Redmine::Plugin.register :redmine_repository_plugin do
  name 'Redmine Repository Plugin'
  author 'Your Name'
  description 'A plugin to add repository functionality to projects'
  version '0.1.0'
  url 'https://yourpluginhomepage.example.com'
  author_url 'https://yourprofile.example.com'
  requires_redmine version_or_higher: '5.1.3'
end
