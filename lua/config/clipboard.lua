vim.g.clipboard = {
  name = "Termux Clipboard",
  copy = {
    ["+"] = function(lines, _)
      local text = table.concat(lines, "\n") -- Gabungkan dengan newline
      os.execute("termux-clipboard-set " .. vim.fn.shellescape(text))
    end,
    ["*"] = function(lines, _)
      local text = table.concat(lines, "\n")
      os.execute("termux-clipboard-set " .. vim.fn.shellescape(text))
    end,
  },
  paste = {
    ["+"] = function()
      local content = vim.fn.system("termux-clipboard-get")
      content = content:gsub("%z", ""):gsub("\r", "") -- Bersihkan karakter aneh
      return vim.split(content, "\n"), nil
    end,
    ["*"] = function()
      local content = vim.fn.system("termux-clipboard-get")
      content = content:gsub("%z", ""):gsub("\r", "")
      return vim.split(content, "\n"), nil
    end,
  },
}
