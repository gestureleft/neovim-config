local config = {
  cmd = { "/opt/homebrew/bin/jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

print("loaded")
require("jdtls").start_or_attach(config)
