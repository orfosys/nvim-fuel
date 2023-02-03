-- ########################################################
-- # Maintainer:  Javier Orfo                             #
-- # URL:         https://github.com/javio7/nvim-executor #
-- ########################################################

local util = require'executor.util'

return {
    build = function (file_with_extension)
        return string.format(" go run %s", file_with_extension)
    end,
    get_statusline = function(file)
        return util.statusline_style(" Go", file)
    end
}
