return {
  {
    "folke/ts-comments.nvim",
    enabled = false,
    opts = {
      lang = {
        astro = "<!-- %s -->",
        axaml = "<!-- %s -->",
        blueprint = "// %s",
        c = "// %s",
        c_sharp = "// %s",
        clojure = { ";; %s", "; %s" },
        cpp = "// %s",
        cs_project = "<!-- %s -->",
        cue = "// %s",
        fsharp = "// %s",
        fsharp_project = "<!-- %s -->",
        gleam = "// %s",
        glimmer = "{{! %s }}",
        graphql = "# %s",
        handlebars = "{{! %s }}",
        hcl = "# %s",
        html = "<!-- %s -->",
        hyprlang = "# %s",
        ini = "; %s",
        ipynb = "# %s",
        javascript = {
          "// %s",                   -- default commentstring when no treesitter node matches
          "/* %s */",
          call_expression = "// %s", -- specific commentstring for call_expression
          jsx_attribute = "// %s",
          jsx_element = "{/* %s */}",
          jsx_fragment = "{/* %s */}",
          spread_element = "// %s",
          statement_block = "// %s",
        },
        json = "// %s", -- JSON doesn't have comments by default, but you can use single-line comments in some parsers
        jupyter = "# %s",
        kdl = "// %s",
        lua = "-- %s",            -- Lua comment
        markdown = "<!-- %s -->", -- Markdown comment for embedded HTML
        php = "// %s",
        perl = "# %s",            -- Perl comment
        python = "# %s",          -- Python comment
        ruby = "# %s",            -- Ruby comment
        rego = "# %s",
        rescript = "// %s",
        rust = { "// %s", "/* %s */" },
        scala = "// %s", -- Scala comment
        sql = "-- %s",
        styled = "/* %s */",
        svelte = "<!-- %s -->",
        templ = {
          "// %s",
          component_block = "<!-- %s -->",
        },
        terraform = "# %s",
        tsx = {
          "// %s",                   -- default commentstring when no treesitter node matches
          "/* %s */",
          call_expression = "// %s", -- specific commentstring for call_expression
          jsx_attribute = "// %s",
          jsx_element = "{/* %s */}",
          jsx_fragment = "{/* %s */}",
          spread_element = "// %s",
          statement_block = "// %s",
        },
        twig = "{# %s #}",
        typescript = { "// %s", "/* %s */" }, -- langs can have multiple commentstrings
        vue = "<!-- %s -->",
        xaml = "<!-- %s -->",
        bash = "# %s",     -- Bash comment
        shell = "# %s",    -- Shell script comment
        elixir = "# %s",   -- Elixir comment
        go = "// %s",      -- Go comment
        haskell = "-- %s", -- Haskell comment
        julia = "# %s",    -- Julia comment
        kotlin = "// %s",  -- Kotlin comment
        objc = "// %s",    -- Objective-C comment
        swift = "// %s",   -- Swift comment
        dart = "// %s",    -- Dart comment
        r = "# %s",        -- R comment
        vhdl = "-- %s",    -- VHDL comment
        yaml = "# %s",     -- YAML comment
      }
    },
    event = "VeryLazy",
  },
}
