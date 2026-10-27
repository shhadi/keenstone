# Keenstone

**Open-source skills that make your AI sharper.**

Keenstone is a collection of [Agent Skills](https://agentskills.io): plain-Markdown instruction packs
that teach an AI assistant a proven way to do something well. Each skill works in Claude
(web, desktop, Cowork and Claude Code) and in any tool that supports the open `SKILL.md`
standard, such as Codex, Cursor and Gemini CLI. You can also paste one into ChatGPT or
Gemini as custom instructions.

## Skills

The first skill is on its way.

## Repository layout

```
.claude-plugin/marketplace.json   Catalog of every skill in this repo (Claude plugin marketplace)
plugins/<name>/                   One plugin per skill
  .claude-plugin/plugin.json      Plugin manifest
  skills/<name>/SKILL.md          The skill itself, in the open Agent Skills format
  README.md, CHANGELOG.md
```

Every change lands through a pull request, so the history of each skill stays readable.

## License

[MIT](LICENSE)
