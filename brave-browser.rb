cask 'brave-browser' do
  version '80.1.4.95,104.95'
  sha256 'BRAVESHA256'

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser was verified as official when first introduced to the cask
  url "https://brave-browser-downloads.s3.brave.com/latest/Brave-Browser.dmg"
  appcast 'https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml'
  name 'Brave'
  homepage 'https://brave.com/ioe757'

  auto_updates true

  app 'Brave Browser.app'

  zap trash: [
               '~/Library/Application Support/BraveSoftware/Brave-Browser',
               '~/Library/Preferences/com.brave.Browser.plist',
               '~/Library/Saved Application State/com.brave.Browser.savedState',
             ]
end
