require 'core'
require 'plugins'

-- Local environment specific (work, etc). Don't track
pcall(require, 'locals')
