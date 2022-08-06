local M = {}

local function get_project_root(dir)
  dir = vim.fn.fnamemodify(dir, ':p'):sub(1, -2)
  home = os.getenv('HOME')

  if dir == home then
    return '.'
  end
  if vim.fn.isdirectory(dir .. '/.git') == 1 then
    return dir
  end

  pdir = vim.fn.fnamemodify(dir, ':h')
  return get_project_root(pdir)
end

function M.get_project_root()
  return get_project_root('.')
end

return M
