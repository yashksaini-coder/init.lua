return {
  "f-person/git-blame.nvim",
  config = function()
    local ok, gitblame = pcall(require, "gitblame")
    if not ok then
      return
    end

    gitblame.setup({
      enabled = true,
      message_template = " <summary> • <date> • <author> • <<sha>>",
      date_format = "%m-%d-%Y %H:%M:%S",
      virtual_text_column = 1,
    })
  end,
}


