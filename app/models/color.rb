class Color < ActiveYaml::Base
  include ActiveHash::Associations

  set_root_path Rails.root.join('db/fixtures')
  set_filename 'colors'
end
