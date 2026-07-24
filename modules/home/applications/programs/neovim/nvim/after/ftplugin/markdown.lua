-- Markdown files should be easy to diff.
-- Hard wrapping makes diffs noisy.
-- Soft wrapping improves portability.

local set = vim.opt_local

-- Soft wrap
set.wrap = true
set.linebreak = true
set.breakindent = true

-- Disable hard wrap
set.textwidth = 0
set.formatoptions:remove("t")
