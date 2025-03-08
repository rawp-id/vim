-- Set lokasi file temp clipboard
local temp_file = "/data/data/com.termux/files/usr/tmp/.clipboard.tmp"

vim.g.clipboard = {
  name = "OSC 52 with Temp File",
  copy = {
    ["+"] = function(lines, _)
      local text = table.concat(lines, "\n") -- Gabungkan dengan newline

      -- Simpan ke file temp dengan newline yang benar
      local file = io.open(temp_file, "w")
      if file then
        file:write(text .. "\n") -- Pastikan ada newline di akhir
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
        file:write(text .. "\n")
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
      -- Ambil dari file temp dan bersihkan format
      local file = io.open(temp_file, "r")
      if file then
        local content = file:read("*a")
        file:close()

        -- Hapus karakter NULL (\0) dan pastikan newline tetap benar
        content = content:gsub("%z", ""):gsub("\r\n", "\n"):gsub("\n$", "")

        return vim.split(content, "\n"), nil
      else
        return { "" }, nil
      end
    end,
    ["*"] = function()
      -- Ambil dari file temp dan bersihkan format
      local file = io.open(temp_file, "r")
      if file then
        local content = file:read("*a")
        file:close()

        -- Hapus karakter NULL (\0) dan pastikan newline tetap benar
        content = content:gsub("%z", ""):gsub("\r\n", "\n"):gsub("\n$", "")

        return vim.split(content, "\n"), nil
      else
        return { "" }, nil
      end
    end,
  },
}
