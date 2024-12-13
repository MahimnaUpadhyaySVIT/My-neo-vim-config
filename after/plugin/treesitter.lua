require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "cpp" , "css" , "dart" , "git_config" , "gitcommit" , "git_rebase" , "gitignore" , "go" , "gomod" , "gosum" , "html" , "java", "javascript" , "json" , "kotlin" , "lua" , "markdown_inline" , "php" , "prisma" , "python" , "ruby" , "rust" , "typescript" ,"vim" , "vimdoc" , "xml" , "yaml" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
