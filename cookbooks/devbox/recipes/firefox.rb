package 'firefox'

firefox_extension 'vimperator' do
  url 'https://addons.mozilla.org/firefox/downloads/file/405264/vimperator-latest-fx.xpi'
  id 'vimperator@mozdev.org'
end

firefox_extension 'adblock' do
  url 'https://addons.mozilla.org/firefox/downloads/latest/1865/addon-1865-latest.xpi'
  id '{d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d}'
end

firefox_extension 'tabtree' do
  url 'https://addons.mozilla.org/firefox/downloads/latest/637996/platform:2/addon-637996-latest.xpi'
  id '{ec8030f7-c20a-464f-9b0e-13a3a9e97384}'
end
