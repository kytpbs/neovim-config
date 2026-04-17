local function start_java_lsp()
  -- Look for your project markers
  local root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw", "pom.xml", "build.gradle.kts" })
    
  if not root_dir then
    return
  end
    
  vim.lsp.start("jdtls", {
    on_attach = on_attach,
    cmd = { "java", "-jar", "/home/kytpb/Downloads/jdt-language-server-latest.jar" },
    root_dir = root_dir,
    settings = {
      java = {
        -- jdt = {
        --   ls = {
        --     vmargs = "-XX:+UseParallelGC -XX:GCTimeRatio=4 -XX:AdaptiveSizePolicyWeight=90 -Dsun.zip.disableMemoryMapping=true -Xmx2G -Xms100m -Djava.locale.providers=COMPAT"
        --   }
        -- }
      }
    }
  })
    
end
