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
  dashboard.button("f", "  find file", ":telescope find_files <cr>"),
  dashboard.button("e", "  new file", ":ene <bar> startinsert <cr>"),
--  dashboard.button("p", "  find project", ":telescope projects <cr>"),
  dashboard.button("r", "  recently used files", ":telescope oldfiles <cr>"),
  dashboard.button("t", "  find text", ":telescope live_grep <cr>"),
--  dashboard.button("c", "  configuration", ":e ~/.config/nvim/init.lua <cr>"),
  dashboard.button("q", "  quit neovim", ":qa<cr>"),
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

