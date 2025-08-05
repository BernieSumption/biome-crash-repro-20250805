To reproduce the bug:

```sh
npm i;
npm run lint;
```

Full output on my machine:

```
❯ npm run lint

> lint
> biome check

Biome encountered an unexpected error

This is a bug in Biome, not an error in your code, and we would appreciate it if you could report it to https://github.com/biomejs/biome/issues/ along with the following information to help us fixing the issue.

When opening the issue, please provide a minimal reproduction, or identify and share the file/code that triggers it. Without a way to reproduce the error, the error can't be fixed:

Source Location: /Users/runner/work/biome/biome/crates/biome_parser/src/lib.rs:545:9
Thread Name: biome::workspace_worker_3
Message: The parser is no longer progressing. Stuck at '' HTML_LITERAL:2..2

internalError/panic  INTERNAL   FATAL  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ✖ A task panicked while processing /Users/bernardsumption/Documents/GitHub/biome-crash-repro-20250805/bug.html: The parser is no longer progressing. Stuck at '' HTML_LITERAL:2..2
  
  ⚠ Biome exited as this error could not be handled and resulted in a fatal error. Please report it if necessary.
  
  ⚠ This diagnostic was derived from an internal Biome error. Potential bug, please report it if necessary.
  

configuration ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ✖ Biome exited because the configuration resulted in errors. Please fix them. 
```