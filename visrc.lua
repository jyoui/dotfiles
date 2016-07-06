-- load standard vis module, providing parts of the Lua API
require('vis')
local vis = vis

vis.events.win_open = function(win)
  -- enable syntax highlighting for known file types
  vis.filetype_detect(win)

  -- Your local configuration options e.g.
  vis:command('set relativenumber')
  vis:command('set tabwidth 2')
  vis:command('set expandtab')
  vis:command('set autoindent')
  vis:command('set cursorline')
  vis:command('set colorcolumn 80')
  vis:command('set theme solarized')

  vis:command('map! normal j gj')
  vis:command('map! normal k gk')
end
