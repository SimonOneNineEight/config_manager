return {
    'mbbill/undotree',
    keys = {
        {'<leader>u', function() vim.cmd.UndotreeToggle() end, desc = "[U]ndotree Toggle"}
    }
}

