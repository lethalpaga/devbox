node['devbox']['editors'].each do |editor|
  include_recipe "devbox::editor_#{editor}"
end
