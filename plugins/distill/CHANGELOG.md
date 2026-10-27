# Changelog

## 0.3.0

Parallel mode: when the assistant can spawn subagents (Claude Code, Cowork, Claude with agent
tools), rule extraction runs as one round instead of ten passes in a row.

- One extraction subagent per source, all launched at once, each with a self-contained brief and
  a fixed return format, so results merge cleanly
- The orchestrator keeps framing, source selection, consensus scoring and principles, which need
  a single view of all the rules
- Optional scouts for picking sources in niche domains, and an optional independent reviewer that
  checks the consensus table before delivery
- Failed or unverified subagent results are handled without stalling the run
- Tools without subagents run the same steps in order, with the same output

## 0.2.0

Renamed from Consensus Distillation to **Distill**: shorter, easier to remember, and easy to use
as a verb ("distill procrastination").

- Skill, plugin and folder names are now `distill`
- New tagline: *Distill 10 experts into the rules that work.*
- Output now opens with `# Distill: [Problem]`
- The skill also triggers when someone asks to "distill" a topic

## 0.1.0

First version of the skill, based on the Five-Step Algorithm:

- Five steps: frame the problem, map the 10 most authoritative sources, extract ~100 rules,
  score them by consensus, then turn the strongest into practice and extract root principles
- Intake of up to 3 questions, and two delivery modes (Full in two parts, Quick in one)
- Consensus tiers (Core, Strong, Supported), contradictions and outlier gems
- Quality standards against invented sources, and a calibration example
