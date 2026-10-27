# Keenstone

**Open-source skills that make your AI sharper.**

Keenstone is a collection of [Agent Skills](https://agentskills.io): plain-Markdown instruction packs
that teach an AI assistant a proven way to do something well. Each skill works in Claude
(web, desktop, Cowork and Claude Code) and in any tool that supports the open `SKILL.md`
standard, such as Codex, Cursor and Gemini CLI. You can also paste one into ChatGPT or
Gemini as custom instructions.

## Skills

| Skill | What it does |
|---|---|
| [**Consensus Distillation**](plugins/consensus-distillation) | 10 experts. 100 rules. Only what they agree on. Turns any problem into ranked rules, root principles and an action plan. |

## Install

**Claude Code**

```
/plugin marketplace add shhadi/keenstone
/plugin install consensus-distillation@keenstone
```

**Claude (web and desktop)**: open **Customize → Plugins**, add the GitHub marketplace
`shhadi/keenstone`, and install the skill from there.

**Codex, Cursor, Gemini CLI and other agents**

```
npx skills add shhadi/keenstone --skill consensus-distillation
```

**ChatGPT, Gemini or any other chat AI**: copy the skill's
[`SKILL.md`](plugins/consensus-distillation/skills/consensus-distillation/SKILL.md) into your
custom instructions (a Custom GPT, a Gem, or a project's instructions), then describe your problem.

## Repository layout

```
.claude-plugin/marketplace.json   Catalog of every skill in this repo (Claude plugin marketplace)
plugins/<name>/                   One plugin per skill
  .claude-plugin/plugin.json      Plugin manifest
  skills/<name>/SKILL.md          The skill itself, in the open Agent Skills format
  README.md, CHANGELOG.md
```

Every change lands through a pull request, so the history of each skill stays readable.

## Credits

Credits are listed per skill.

- **Consensus Distillation** is based on an idea from a video by
  [Abdelkarim Ben Mohamadi](https://github.com/AbdelkarimBenMohamadi).

## License

[MIT](LICENSE)
