# Distill

**10 experts. 100 rules. Only what they agree on.**

Distill turns the collective knowledge of the leading experts on any problem
into a ranked set of actionable rules, the root principles that generate them, and a custom
technique built for your situation. It works for any problem or skill: procrastination,
email marketing, public speaking, sleep, negotiation, learning a language.

## How it works

1. **Frame the problem** in one precise sentence and name the domains involved.
2. **Map the canon:** the 10 most authoritative sources, chosen for credibility and for
   diversity of perspective.
3. **Codify:** extract about 10 actionable rules from each source (~100 in total).
4. **Score consensus:** merge duplicates, count how many sources endorse each rule, and rank
   them into Core, Strong and Supported tiers. Contradictions and outlier gems are listed too.
5. **Operationalize and extract root principles:** turn the top rules into concrete steps for
   your context, then distill the 3-7 principles that explain why they work and design an
   original technique from them.

You finish with an action plan: three rules to start this week and a 14-day review.

**Parallel mode.** Where your assistant can spawn subagents (Claude Code, Cowork, or Claude with
agent tools), Distill gives each source its own subagent and extracts all the rules in one round
instead of ten passes in a row. An optional independent reviewer checks the consensus table
before you see it. Elsewhere, it runs the same steps in order, with the same output.

## Install

In Claude Code:

```
/plugin install distill --marketplace shhadi/keenstone
```

For Claude on the web or desktop, Codex, Cursor, ChatGPT and other tools, see the
[Keenstone README](https://github.com/shhadi/keenstone#install).

## Usage

Ask in plain language, for example:

- "Distill procrastination. I work full-time and only have evenings."
- "What do the best books agree on about cold email outreach for a B2B SaaS?"

The skill asks up to three short questions about your context, then answers in Full mode
(two parts) or Quick mode (one response).

## What it runs and sends

Nothing. The skill is a single instruction file with no scripts, hooks or servers. If your
assistant has web search enabled, the skill asks it to verify that each source exists. In
parallel mode it asks your assistant to start subagents of its own, which use more tokens in
exchange for speed.

## Credits

Distill is based on an idea from one of
[Abdelkarim Ben Mohamadi](https://github.com/AbdelkarimBenMohamadi)'s videos: to beat
procrastination, read the 10 strongest books on it, extract their rules, keep the ones they
share, and go back to the principles behind them. Distill generalizes that method to any
problem or skill.

## License

[MIT](LICENSE)
