local moon = require 'fullmoon'

moon.setRoute('/feed', function(r)
  local xml = [[<?xml version="1.0" encoding="UTF-8"?>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don't forget me this weekend!</body>
</note>]]

  r.headers['Content-Type'] = 'text/xml'
  return xml
end)

moon.run()
