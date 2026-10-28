# GULP — all champions 0.3.2 (delayed reveal) — split archive

The full fantome is ~180 MB, too large for a single GitHub blob, so it is
stored here as 18 numbered parts of 10 MiB each:

```
GULP-all-champions-0.3.2-delayed-reveal.fantome.part_aa
GULP-all-champions-0.3.2-delayed-reveal.fantome.part_ab
...
GULP-all-champions-0.3.2-delayed-reveal.fantome.part_ar
```

## Reassemble

```sh
cat GULP-all-champions-0.3.2-delayed-reveal.fantome.part_* > GULP-all-champions-0.3.2-delayed-reveal.fantome
```

(Windows: `copy /b GULP-all-champions-0.3.2-delayed-reveal.fantome.part_aa+...` or use Git Bash with the `cat` command above.)

## Verify

- Full file size: 188,513,732 bytes
- Full file sha256: `d883053ba913bba71b713442660acbf60e58704ab6a2c2691e95c6962d293e8e`

```sh
sha256sum GULP-all-champions-0.3.2-delayed-reveal.fantome
```

The hash should match the value above before installing.

Source: pixeldrain https://pixeldrain.com/u/fQUvQ6po (shelved 2026-10-28).
