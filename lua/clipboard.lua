-- local temp_file = os.getenv("HOME") .. "/.clipboard.txt"
local temp_file = "/data/data/com.termux/files/usr/tmp/.clipboard.tmp"

vim.g.clipboard = {
  name = "OSC 52 with Temp File",
  copy = {
    ["+"] = function(lines, _)
      local text = table.concat(lines, "\n")

      -- Simpan ke file temp
      local file = io.open(temp_file, "w")
      if file then
        file:write(text)
        file:close()
      end

      -- Kirim ke clipboard dengan OSC 52
      local encoded = vim.fn.system("echo -n " .. vim.fn.shellescape(text) .. " | base64 | tr -d '\n'")
      local command = "\27]52;c;" .. encoded .. "\7"
      io.write(command)
      io.flush()
    end,
    ["*"] = function(lines, _)
      local text = table.concat(lines, "\n")

      -- Simpan ke file temp
      local file = io.open(temp_file, "w")
      if file then
        file:write(text)
        file:close()
      end

      -- Kirim ke clipboard dengan OSC 52
      local encoded = vim.fn.system("echo -n " .. vim.fn.shellescape(text) .. " | base64 | tr -d '\n'")
      local command = "\27]52;c;" .. encoded .. "\7"
      io.write(command)
      io.flush()
    end,
  },
  paste = {
    ["+"] = function()
      -- Ambil dari file temp
      local file = io.open(temp_file, "r")
      if file then
        local content = file:read("*a")
        file:close()
        return { content }, nil
      else
        return { "" }, nil
      end
    end,
    ["*"] = function()
      -- Ambil dari file temp
      local file = io.open(temp_file, "r")
      if file then
        local content = file:read("*a")
        file:close()
        return { content }, nil
      else
        return { "" }, nil
      end
    end,
  },
}
