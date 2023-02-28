-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nataneb/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nataneb/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nataneb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nataneb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nataneb/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ChatGPT.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fchatgpt\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/ChatGPT.nvim",
    url = "https://github.com/jackMort/ChatGPT.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\nﬂ\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["editorconfig.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/editorconfig.nvim",
    url = "https://github.com/gpanders/editorconfig.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["go.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ago\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/go.nvim",
    url = "https://github.com/ray-x/go.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["live-command.nvim"] = {
    config = { "\27LJ\2\nn\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rcommands\1\0\0\tNorm\1\0\0\1\0\1\bcmd\tnorm\nsetup\17live-command\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/live-command.nvim",
    url = "https://github.com/smjonas/live-command.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nÔ\19\0\0\a\0?\0]6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0032\0005\0041\0=\0043\0035\0045\0005\0054\0=\5.\4=\4/\3=\0036\0025\0037\0005\0049\0005\0058\0=\5.\4=\4/\3=\3:\0025\3=\0005\4;\0005\5<\0=\5.\4=\4/\3=\3\31\2B\0\2\0016\0\0\0009\0\1\0'\2>\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\t<bs>\16navigate_up\n<c-x>\17clear_filter\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\6/\17fuzzy_finder\6D\27fuzzy_finder_directory\6H\18toggle_hidden\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\1\0\1\fvisible\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\22\6r\vrename\6x\21cut_to_clipboard\6S\15open_split\6c\tcopy\6d\vdelete\6t\16open_tabnew\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6>\16next_source\6s\16open_vsplit\6<\16prev_source\6R\frefresh\6?\14show_help\6m\tmove\6w\28open_with_window_picker\6q\17close_window\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6A\18add_directory\6z\20close_all_nodes\6C\15close_node\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\bÔò∞\rmodified\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\nadded\5\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bÔ∞ä\16folder_open\bÓóæ\18folder_closed\bÓóø\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\25close_if_last_window\1\23popup_border_style\frounded\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\bÔ†¥\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\tÔÅö \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\tÔÅ± \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\tÔÅó \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogit = {
    config = { "\27LJ\2\n8\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n¬\3\0\0\4\0\r\0\0246\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0005\3\5\0=\3\6\2=\2\3\0019\1\a\0004\2\3\0005\3\b\0>\3\1\2=\2\3\0019\1\2\0005\2\n\0005\3\v\0=\3\6\2=\2\t\0019\1\a\0004\2\3\0005\3\f\0>\3\1\2=\2\t\1K\0\1\0\1\0\4\tname\22Listen for Xdebug\ttype\bphp\frequest\vlaunch\tport\3®F\1\2\0\0:/home/nataneb/random/vscode-php-debug/out/phpDebug.js\1\0\2\ttype\15executable\fcommand\tnode\bphp\1\0\5\ttype\vpython\frequest\vlaunch\fconsole\23integratedTerminal\tname\16Launch file\fprogram\f${file}\19configurations\targs\1\3\0\0\a-m\20debugpy.adapter\1\0\2\ttype\15executable\fcommand\vpython\vpython\radapters\bdap\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireF\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\21select_next_item\fvisibleF\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\21select_prev_item\fvisible{\0\0\4\1\a\0\16-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\6Ä6\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\ant\n<C-z>\rfeedkeys\afn\bvim\21select_next_item\fvisible}\0\1\6\1\6\0\16-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0B\1\4\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\4\0019\1\5\1\18\3\0\0B\1\2\2L\1\2\0\4¿\fdirname\tpath\t.git\vvendor\18composer.json\17root_patternÏ\v\1\0\f\0V\0µ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\1B\3\1\0019\3\4\2B\3\1\0019\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\f\0009\a\n\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\n\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0063\a\15\0=\a\16\0063\a\17\0=\a\18\0069\a\n\0009\a\19\aB\a\1\2=\a\20\0069\a\n\0009\a\21\aB\a\1\2=\a\22\0069\a\n\0009\a\23\a5\t\26\0009\n\24\0009\n\25\n=\n\27\tB\a\2\2=\a\28\6=\6\n\0054\6\6\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0065\a \0>\a\4\0065\a!\0>\a\5\6=\6\"\5B\3\2\0019\3\4\0009\3#\3'\5$\0005\6(\0009\a%\0009\a\"\a4\t\3\0005\n&\0>\n\1\t4\n\3\0005\v'\0>\v\1\nB\a\3\2=\a\"\6B\3\3\0019\3\4\0009\3)\0035\5*\0005\6,\0009\a\n\0009\a+\a9\a)\aB\a\1\2=\a\n\0064\a\3\0005\b-\0>\b\1\a=\a\"\6B\3\3\0019\3\4\0009\3)\3'\5.\0005\0062\0005\a0\0003\b/\0=\b1\a=\a\n\0069\a%\0009\a\"\a4\t\3\0005\n3\0>\n\1\t4\n\3\0005\v4\0>\v\1\nB\a\3\2=\a\"\6B\3\3\0016\3\0\0'\0055\0B\3\2\0026\4\0\0'\0066\0B\4\2\0025\5?\0005\0069\0005\a8\0=\a:\0065\a;\0=\a<\0063\a=\0=\a>\6=\6@\5=\0057\0036\5\0\0'\aA\0B\5\2\0029\5B\5B\5\1\0026\6\0\0'\bC\0B\6\2\0029\aD\0069\a\4\a5\tE\0=\5F\tB\a\2\0019\aG\0069\a\4\a5\tH\0=\5F\tB\a\2\0019\aI\0069\a\4\a5\tJ\0=\5F\tB\a\2\0019\aK\0069\a\4\a5\tL\0=\5F\tB\a\2\0019\aM\0069\a\4\a5\tN\0=\5F\tB\a\2\0019\aO\0069\a\4\a5\tP\0=\5F\tB\a\2\0019\aQ\0069\a\4\a5\tR\0=\5F\tB\a\2\0019\aS\0069\a\4\a5\tT\0=\5F\tB\a\2\0016\aU\0\18\t\6\0B\a\2\0012\0\0ÄK\0\1\0\15efm_config\1\0\0\vlua_ls\1\0\0\18rust_analyzer\1\0\0\vclangd\1\0\0\ngopls\1\0\0\rtsserver\1\0\0\rprismals\1\0\0\fpyright\17capabilities\1\0\0\17intelephense\14lspconfig\25default_capabilities\17cmp_nvim_lsp\19default_config\1\0\0\rroot_dir\0\14filetypes\1\2\0\0\bphp\bcmd\1\0\0\1\4\0\0\25PHPLS_ALLOW_XDEBUG=1\bphpI/home/nataneb/random/php-language-server/bin/php-language-server.php\vphpls2\19lspconfig.util\22lspconfig.configs\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\bTab\1\0\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\t<Up>\0\v<Down>\0\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\20mason-lspconfig\nmason\bcmp\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  pywal = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npywal\frequire\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/pywal",
    url = "https://github.com/AlphaTechnolog/pywal.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n§\2\0\0\b\0\16\1 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\r\0005\3\5\0004\4\3\0006\5\0\0'\a\3\0B\5\2\0029\5\4\0054\a\0\0B\5\2\0?\5\0\0=\4\6\0035\4\a\0005\5\b\0004\6\0\0=\6\t\0054\6\0\0=\6\n\5=\5\v\4=\4\f\3=\3\14\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\15\0'\2\6\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\rmappings\6n\6i\1\0\0\1\0\2\ntheme\bivy\16cwd_to_path\2\14ui-select\1\0\0\17get_dropdown\21telescope.themes\nsetup\14telescope\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/nataneb/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nÔ\19\0\0\a\0?\0]6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0032\0005\0041\0=\0043\0035\0045\0005\0054\0=\5.\4=\4/\3=\0036\0025\0037\0005\0049\0005\0058\0=\5.\4=\4/\3=\3:\0025\3=\0005\4;\0005\5<\0=\5.\4=\4/\3=\3\31\2B\0\2\0016\0\0\0009\0\1\0'\2>\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\t<bs>\16navigate_up\n<c-x>\17clear_filter\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\6/\17fuzzy_finder\6D\27fuzzy_finder_directory\6H\18toggle_hidden\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\1\0\1\fvisible\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\22\6r\vrename\6x\21cut_to_clipboard\6S\15open_split\6c\tcopy\6d\vdelete\6t\16open_tabnew\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6>\16next_source\6s\16open_vsplit\6<\16prev_source\6R\frefresh\6?\14show_help\6m\tmove\6w\28open_with_window_picker\6q\17close_window\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6A\18add_directory\6z\20close_all_nodes\6C\15close_node\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\bÔò∞\rmodified\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\nadded\5\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bÔ∞ä\16folder_open\bÓóæ\18folder_closed\bÓóø\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\25close_if_last_window\1\23popup_border_style\frounded\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\bÔ†¥\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\tÔÅö \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\tÔÅ± \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\tÔÅó \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: live-command.nvim
time([[Config for live-command.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rcommands\1\0\0\tNorm\1\0\0\1\0\1\bcmd\tnorm\nsetup\17live-command\frequire\0", "config", "live-command.nvim")
time([[Config for live-command.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireF\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\21select_next_item\fvisibleF\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0¿\21select_prev_item\fvisible{\0\0\4\1\a\0\16-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\6Ä6\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\ant\n<C-z>\rfeedkeys\afn\bvim\21select_next_item\fvisible}\0\1\6\1\6\0\16-\1\0\0009\1\0\1'\3\1\0'\4\2\0'\5\3\0B\1\4\2\18\3\0\0B\1\2\2\14\0\1\0X\2\5Ä-\1\0\0009\1\4\0019\1\5\1\18\3\0\0B\1\2\2L\1\2\0\4¿\fdirname\tpath\t.git\vvendor\18composer.json\17root_patternÏ\v\1\0\f\0V\0µ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\1B\3\1\0019\3\4\2B\3\1\0019\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\f\0009\a\n\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\n\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0063\a\15\0=\a\16\0063\a\17\0=\a\18\0069\a\n\0009\a\19\aB\a\1\2=\a\20\0069\a\n\0009\a\21\aB\a\1\2=\a\22\0069\a\n\0009\a\23\a5\t\26\0009\n\24\0009\n\25\n=\n\27\tB\a\2\2=\a\28\6=\6\n\0054\6\6\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0065\a \0>\a\4\0065\a!\0>\a\5\6=\6\"\5B\3\2\0019\3\4\0009\3#\3'\5$\0005\6(\0009\a%\0009\a\"\a4\t\3\0005\n&\0>\n\1\t4\n\3\0005\v'\0>\v\1\nB\a\3\2=\a\"\6B\3\3\0019\3\4\0009\3)\0035\5*\0005\6,\0009\a\n\0009\a+\a9\a)\aB\a\1\2=\a\n\0064\a\3\0005\b-\0>\b\1\a=\a\"\6B\3\3\0019\3\4\0009\3)\3'\5.\0005\0062\0005\a0\0003\b/\0=\b1\a=\a\n\0069\a%\0009\a\"\a4\t\3\0005\n3\0>\n\1\t4\n\3\0005\v4\0>\v\1\nB\a\3\2=\a\"\6B\3\3\0016\3\0\0'\0055\0B\3\2\0026\4\0\0'\0066\0B\4\2\0025\5?\0005\0069\0005\a8\0=\a:\0065\a;\0=\a<\0063\a=\0=\a>\6=\6@\5=\0057\0036\5\0\0'\aA\0B\5\2\0029\5B\5B\5\1\0026\6\0\0'\bC\0B\6\2\0029\aD\0069\a\4\a5\tE\0=\5F\tB\a\2\0019\aG\0069\a\4\a5\tH\0=\5F\tB\a\2\0019\aI\0069\a\4\a5\tJ\0=\5F\tB\a\2\0019\aK\0069\a\4\a5\tL\0=\5F\tB\a\2\0019\aM\0069\a\4\a5\tN\0=\5F\tB\a\2\0019\aO\0069\a\4\a5\tP\0=\5F\tB\a\2\0019\aQ\0069\a\4\a5\tR\0=\5F\tB\a\2\0019\aS\0069\a\4\a5\tT\0=\5F\tB\a\2\0016\aU\0\18\t\6\0B\a\2\0012\0\0ÄK\0\1\0\15efm_config\1\0\0\vlua_ls\1\0\0\18rust_analyzer\1\0\0\vclangd\1\0\0\ngopls\1\0\0\rtsserver\1\0\0\rprismals\1\0\0\fpyright\17capabilities\1\0\0\17intelephense\14lspconfig\25default_capabilities\17cmp_nvim_lsp\19default_config\1\0\0\rroot_dir\0\14filetypes\1\2\0\0\bphp\bcmd\1\0\0\1\4\0\0\25PHPLS_ALLOW_XDEBUG=1\bphpI/home/nataneb/random/php-language-server/bin/php-language-server.php\vphpls2\19lspconfig.util\22lspconfig.configs\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\bTab\1\0\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\vconfig\14gitcommit\rfiletype\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\t<Up>\0\v<Down>\0\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\20mason-lspconfig\nmason\bcmp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: go.nvim
time([[Config for go.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ago\frequire\0", "config", "go.nvim")
time([[Config for go.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: ChatGPT.nvim
time([[Config for ChatGPT.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fchatgpt\frequire\0", "config", "ChatGPT.nvim")
time([[Config for ChatGPT.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: pywal
time([[Config for pywal]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npywal\frequire\0", "config", "pywal")
time([[Config for pywal]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n§\2\0\0\b\0\16\1 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\r\0005\3\5\0004\4\3\0006\5\0\0'\a\3\0B\5\2\0029\5\4\0054\a\0\0B\5\2\0?\5\0\0=\4\6\0035\4\a\0005\5\b\0004\6\0\0=\6\t\0054\6\0\0=\6\n\5=\5\v\4=\4\f\3=\3\14\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\15\0'\2\6\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\17file_browser\rmappings\6n\6i\1\0\0\1\0\2\ntheme\bivy\16cwd_to_path\2\14ui-select\1\0\0\17get_dropdown\21telescope.themes\nsetup\14telescope\frequire\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n¬\3\0\0\4\0\r\0\0246\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0005\3\5\0=\3\6\2=\2\3\0019\1\a\0004\2\3\0005\3\b\0>\3\1\2=\2\3\0019\1\2\0005\2\n\0005\3\v\0=\3\6\2=\2\t\0019\1\a\0004\2\3\0005\3\f\0>\3\1\2=\2\t\1K\0\1\0\1\0\4\tname\22Listen for Xdebug\ttype\bphp\frequest\vlaunch\tport\3®F\1\2\0\0:/home/nataneb/random/vscode-php-debug/out/phpDebug.js\1\0\2\ttype\15executable\fcommand\tnode\bphp\1\0\5\ttype\vpython\frequest\vlaunch\fconsole\23integratedTerminal\tname\16Launch file\fprogram\f${file}\19configurations\targs\1\3\0\0\a-m\20debugpy.adapter\1\0\2\ttype\15executable\fcommand\vpython\vpython\radapters\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n8\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\nﬂ\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
