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

## 3. Run it in parallel when you can

Step 2 is the longest part of the algorithm, and it splits cleanly by source. So when you
have a tool for spawning subagents (an Agent or Task tool, for example), fan it out. If you
don't have one, run every step yourself in order. The output is the same, only slower.

| Step | Who runs it | Why |
|---|---|---|
| 0-1 Frame + canon | You (orchestrator) | Choosing a diverse canon needs a single view of the whole field |
| 2 Rule extraction | One subagent per source, all launched at once | Sources are independent, so 10 sequential passes become one round |
| 3-5 Consensus, practice, principles | You | Merging rules and finding principles needs every rule side by side; splitting this work produces inconsistent clusters |
| Check (optional) | One fresh reviewer subagent | An agent that didn't build the table catches errors its builder misses |

### Fan-out rules
- Launch all extraction subagents in a single message so they run concurrently. If the
  platform limits concurrency, launch in batches (e.g., 5 + 5).
- Subagents don't see this conversation. Give each one a self-contained brief (template
  below) with everything it needs.
- If the platform lets you choose models, a faster model is fine for extraction. Keep the
  strongest model for Steps 3-5, where the judgment happens.
- Wait for every result before starting Step 3. Never guess or fill in a pending
  subagent's result.
- If a subagent fails, returns nothing usable, or reports `VERIFIED: no`, extract that
  source yourself, or drop it and say so in Step 1. One failure should not stall the run.
- For an unfamiliar or niche domain, you can parallelize Step 1 too: spawn 2-3 scouts,
  each proposing candidate sources from a different angle (academic research,
  practitioner bestsellers, alternative or contrarian schools). Then pick the final
  canon yourself.

### Extraction brief (one per source, filled in)

```
You are extracting actionable rules from ONE source for a consensus analysis.

Problem: [the problem, in one sentence]
User context: [2-3 lines]
Your source: [#] [Title] - [Author] ([Year])

Task:
1. If you have web search, verify the source exists and look up its main techniques
   (summaries, author interviews, reviews). Paraphrase; never copy long passages.
2. Extract up to 10 actionable rules this source actually argues for, most important first.
   - Each rule is one imperative instruction with one action.
     Weak: "Motivation matters."
     Strong: "Start with a version of the task you can finish in 5 minutes."
   - Fidelity over count: if you only know the source's general thesis, return fewer
     rules and mark them "general". Never invent techniques, quotes, or statistics.
3. Return EXACTLY this format and nothing else:

SOURCE: [#] Title - Author (Year)
VERIFIED: yes | partial | no - [how, one line]
CORE THESIS: [one line]
RULES:
1. [rule] | mechanism: [why it works, max 12 words] | confidence: high | medium | general
2. ...
UNIQUE INSIGHT: [the one idea this source stresses that most others may not, or "none"]
```

### Independent check (recommended in Full mode)
Once the Step 3 table is ready, spawn one reviewer subagent. Give it the source list, the
raw rule lists, and the consensus table, but not your reasoning. Ask it to flag:
miscounted consensus scores, rules credited to a source whose list doesn't contain them,
and merges that combined rules with different mechanisms. You can draft Steps 4-5 while it
runs; apply its corrections before delivering.

---

## 4. The Workflow

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

## 5. Output template

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

## 6. Quality standards

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

## 7. Example (calibration)

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
