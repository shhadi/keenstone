---
name: distill
description: Solve any problem or master any skill by distilling expert consensus - map the top 10 sources, extract ~100 rules, rank them by agreement, turn the strongest into actions, and derive the root principles behind them. Use whenever someone wants the proven best way to fix a problem or improve at something, asks what experts or the best books agree on, says "distill" a topic, or mentions the Five-Step Algorithm.
---

# Distill

*Distill 10 experts into the rules that work.*

Turn the collective knowledge of the leading experts on any problem into a ranked set of
actionable rules, the root principles that generate them, and a custom technique built for
the user's situation. (Also known as the Five-Step Algorithm.)

**Why this works:** any single expert has blind spots and personal biases. A rule that
independent experts arrive at again and again is far more likely to be robust. But rules
alone are brittle - people forget them or apply them in the wrong context. Understanding
the deeper principles that produce the rules lets the user adapt them, and invent new
techniques of their own. Keep both goals in mind at every step: **consensus** for
reliability, **principles** for depth.

---

## 1. Intake

Collect four inputs:

| Input | What it is |
|---|---|
| Problem / skill | The problem to solve or the skill to master |
| Context | Who the user is, constraints, resources, what they've already tried |
| Desired outcome | What success looks like, measurably if possible |
| Source type | Books (default), research papers, courses, or expert practitioners |

If the request already gives enough to work with, start immediately. If key context is
missing, ask **at most 3 short questions in a single message**. If the user isn't available
or says "just go", proceed and state your assumptions at the top. Context matters most in
Steps 4-5, where generic advice becomes personal advice.

## 2. Choose a delivery mode

- **Full mode** (default for substantial problems): deliver in two parts.
  Part 1 = Steps 0-3. Then pause and invite the user to say "continue".
  Part 2 = Steps 4-5 + Action Plan.
  Splitting keeps each part complete instead of rushed or truncated.
- **Quick mode** (when the user wants a fast answer or the problem is small): 5 sources,
  ~5 rules each, top 5-7 consensus rules, 3 principles, and the action plan - all in one response.

State which mode you're using in one line.

---

## 3. The Workflow

### Step 0 - Frame the problem
- Restate the problem precisely in one sentence.
- Name the domain(s) involved and the core question the experts are answering.
  (e.g., "Procrastination" → domains: psychology, behavior design, productivity →
  core question: "Why do people delay tasks they intend to do, and how do they stop?")

### Step 1 - Map the canon (source inventory)
- Identify the **10 most authoritative sources** on the problem. In a niche domain where
  10 strong sources don't exist, use fewer (minimum 5) and say so.
- Selection criteria: author credibility, evidence base, real-world impact, and
  **diversity of perspective** - mix classic and recent works, researchers and practitioners,
  and competing schools of thought. Ten versions of the same view produce fake consensus.
- If the user supplied or uploaded sources, those are the canon.
- If web search is available, verify each source exists (title, author, year) before using it.

Output table: `# | Title | Author | Year | Core thesis (1 line) | Why it qualifies`

### Step 2 - Codify (rule extraction)
- Extract about **10 actionable rules per source** (~100 total).
- Write every rule as an imperative instruction containing one action:
  - Weak: "Motivation matters."
  - Strong: "Start with a version of the task small enough to finish in 5 minutes."
- Tag each rule with its source number.
- **Fidelity:** each rule must reflect what that source actually argues. If you know a
  source's thesis but not its specific techniques, extract fewer rules from it and mark
  them `[general]` rather than inventing specifics.
- In Full mode, show the rules compactly: one line each, grouped by source.
  In Quick mode, skip the raw list and state the total count.

### Step 3 - Consensus scoring
- **Merge** rules that prescribe the same action for the same underlying reason, even when
  worded differently. Keep rules separate if they work through different mechanisms.
- **Score** each merged rule by how many sources endorse it: `x/N` (e.g., 8/10).
- **Rank** from highest to lowest, and assign tiers:
  - **Core** - endorsed by 70%+ of sources
  - **Strong** - 50-69%
  - **Supported** - 30-49%
  - Below 30% is not consensus (but see outlier gems).
- **Contradictions:** list points where experts disagree, and explain what the
  disagreement depends on (personality, context, stage, goal).
- **Outlier gems:** up to 3 high-value insights from a single source that are well
  supported by evidence.

### Step 4 - Tabulate and operationalize
Present the consensus table:

`Rank | Rule | Tier | Consensus (x/N) | Sources | Why it works (mechanism)`

Then, for every **Core** and **Strong** rule, add:
- **How to apply:** 2-4 concrete steps tailored to the user's context
- **Example:** a realistic scenario from the user's world
- **Common mistake:** what people get wrong when applying it

Give **Supported** rules one line of application each, to keep the output focused.

### Step 5 - Extract root principles (the diamond step)
This step is what separates understanding from memorization - give it real thought.

- Distill **3-7 root principles**: deeper truths about human behavior, systems, or the
  domain that explain *why* the rules work. A rule says *what to do*; a principle explains
  *why several rules work*.
- **Completeness test:** if every rule were deleted, could most of them be regenerated from
  the principles alone? If not, a principle is missing.
- Map every consensus rule to the principle(s) it comes from:
  `Principle | Rules it generates | One-line explanation`
- **Design one original technique** for the user's specific situation, built from the principles:
  - Name
  - Steps, each labeled with the principle it comes from
  - How to measure whether it's working
  - What to adjust if it isn't

### Final - Action plan
- The **3 rules to start this week**, each with a first action doable in under 15 minutes.
- A simple tracking method, and a **review checkpoint at 14 days** with questions to ask:
  what worked, what didn't, what to swap in next from the consensus table.

---

## 4. Output template

Use these headings, in this order:

```
# Distill: [Problem]
Mode: [Full / Quick] | Assumptions: [if any]

## Step 0 - Problem Frame
## Step 1 - The Canon (Top Sources)
## Step 2 - Extracted Rules
## Step 3 - Consensus Ranking
### Contradictions
### Outlier Gems
## Step 4 - Consensus Rules in Practice
## Step 5 - Root Principles
### Rule → Principle Map
### Your Custom Technique
## Action Plan
```

---

## 5. Quality standards

- **Accuracy over completeness.** Never invent books, authors, quotes, or statistics.
  If you're unsure a source makes a specific claim, mark it `[unverified]`. A smaller
  honest canon beats a larger fabricated one - fake sources destroy the whole point
  of measuring consensus.
- **Evidence over popularity.** When popular advice conflicts with research, say so.
- **Specific over generic.** Cut any sentence that would fit every problem equally well.
- **Language.** Respond in the user's language. Keep source titles in their original
  language, with a translation if helpful.
- **High-stakes domains** (health, mental health, legal, financial): present the synthesis
  as general information and note that personal decisions deserve a qualified professional.

---

## 6. Example (calibration)

**User:** "I keep procrastinating on my thesis. I work full-time and only have evenings."

**One row of the Step 4 table:**

| Rank | Rule | Tier | Consensus | Sources | Why it works |
|---|---|---|---|---|---|
| 1 | Shrink the first step until it feels too easy to refuse | Core | 9/10 | 1,2,3,4,5,6,7,9,10 | Starting is the hardest part; once moving, momentum and task engagement take over |

**How to apply:** each evening, open the document and write one sentence before anything else;
keep a sticky note with tomorrow's tiny first step on your laptop; allow yourself to stop
after 10 minutes (you usually won't).

**One root principle (Step 5):**
*"Avoidance is emotional, not logical."* People delay tasks that trigger discomfort -
boredom, confusion, fear of judgment. This single principle generates several rules at
once: shrink the first step (less discomfort), clarify the next action (less confusion),
separate drafting from editing (less fear of judgment).
