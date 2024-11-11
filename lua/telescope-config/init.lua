require("telescope").setup({
	defaults = {
		wrap_results = true,
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--ignore-file",
			".gitignore",
		},
	},
	pickers = {
		find_files = {
			hidden = true,
			-- theme = "dropdown",
		},
	},
})
