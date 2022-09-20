local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  vim.notify("failed to load package: 'alpha'")
  return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
--  [[                               __                ]],
--  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],

-- for the meme
  [[  █▀▀▀▀▀█ ▀▀      █ █▀▀▀▀▀█ ]],
  [[  █ ███ █ █▄ ██▀▄▀  █ ███ █ ]],
  [[  █ ▀▀▀ █ ▀█▀▀▄▄ ▀  █ ▀▀▀ █ ]],
  [[  ▀▀▀▀▀▀▀ ▀▄▀▄▀ ▀ █ ▀▀▀▀▀▀▀ ]],
  [[  ▀▀▀▀▄ ▀▄▀▄  ▀ █ █▀ ▄▀▀▀▄▀ ]],
  [[   ████ ▀█   █▀█▄▄▄▄███▄▄   ]],
  [[    ▀ ▄█▀ ▄█▄ █▀ █▄▀███ ▀▀█ ]],
  [[  ▄▀▄█▄ ▀▀▄▄  ▄▀▀ ██▄▄█ ▀▀▄ ]],
  [[     ▀▀▀▀ ▄█  ██▄▀█▀▀▀█▀█▀█ ]],
  [[  █▀▀▀▀▀█   ▄ ▄▀▀ █ ▀ █ ▀█▀ ]],
  [[  █ ███ █ ▄█▀▄ ▄▄ ▀██▀██▄██ ]],
  [[  █ ▀▀▀ █ █  ██▄██ ▄▀ █ █▀  ]],
  [[  ▀▀▀▀▀▀▀ ▀▀▀   ▀   ▀▀▀▀▀▀▀ ]],

-- for real tho
-- [[      █     █░ ██░ ██  ▄▄▄     ▄▄▄█████▓     ]],
-- [[     ▓█░ █ ░█░▓██░ ██▒▒████▄   ▓  ██▒ ▓▒     ]],
-- [[     ▒█░ █ ░█ ▒██▀▀██░▒██  ▀█▄ ▒ ▓██░ ▒░     ]],
-- [[     ░█░ █ ░█ ░▓█ ░██ ░██▄▄▄▄██░ ▓██▓ ░      ]],
-- [[     ░░██▒██▓ ░▓█▒░██▓ ▓█   ▓██▒ ▒██▒ ░      ]],
-- [[     ░ ▓░▒ ▒   ▒ ░░▒░▒ ▒▒   ▓▒█░ ▒ ░░        ]],
-- [[       ▒ ░ ░   ▒ ░▒░ ░  ▒   ▒▒ ░   ░         ]],
-- [[       ░   ░   ░  ░░ ░  ░   ▒    ░           ]],
-- [[ ███▄ ▄███▓ ▒█████   █    ██   ██████ ▓█████ ]],
-- [[▓██▒▀█▀ ██▒▒██▒  ██▒ ██  ▓██▒▒██    ▒ ▓█   ▀ ]],
-- [[▓██    ▓██░▒██░  ██▒▓██  ▒██░░ ▓██▄   ▒███   ]],
-- [[▒██    ▒██ ▒██   ██░▓▓█  ░██░  ▒   ██▒▒▓█  ▄ ]],
-- [[▒██▒   ░██▒░ ████▓▒░▒▒█████▓ ▒██████▒▒░▒████▒]],
-- [[░ ▒░   ░  ░░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░░ ▒░ ░]],
-- [[░  ░      ░  ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░▒  ░ ░ ░ ░  ░]],
-- [[░      ░   ░ ░ ░ ▒   ░░░ ░ ░ ░  ░  ░     ░   ]],
-- [[       ░       ░ ░     ░           ░     ░  ░]],
                                             }
dashboard.section.buttons.val = {
  dashboard.button("f", "  find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  new file", ":ene <bar> startinsert <CR>"),
--  dashboard.button("p", "  find project", ":telescope projects <CR>"),
  dashboard.button("r", "  recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  find text", ":Telescope live_grep <CR>"),
--  dashboard.button("c", "  configuration", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "  quit neovim", ":qa<CR>"),
}

dashboard.section.footer.val = {
  [[coding is frustratingly fun (ﾉಥ益ಥ）ﾉ ┻━┻]],
  [[           -- 🄿 🄷 🄸 🄻 🄸 🄺 🅂 --           ]],
}

dashboard.section.footer.opts.hl = "type"
dashboard.section.header.opts.hl = "include"
dashboard.section.buttons.opts.hl = "keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd user alphaready echo 'ready']])
alpha.setup(dashboard.opts)

