# Example: How to make Keenstone popular

A real Distill run, two days after this repository went public. The question was about Keenstone
itself: *"How can we make this repo very popular and trendy?"*

- **Where it ran:** Claude Code, on 2026-10-29, in parallel mode. Each source had its own
  extraction subagent, and an independent reviewer checked the consensus table.
- **What was trimmed:** lines addressed to the maintainer's own workspace (task tracking, offers
  to open a pull request, closing "your next action" blocks). The analysis itself is as delivered.
- **What changed since:** some front-door gaps the run found were fixed in the same pull request
  that added this file.

Note what it did not do: no rule reached Core (70% of sources or more), and it says so instead
of inventing agreement.

---

# Distill: How to make Keenstone popular and trending
Mode: **Full**, so this is Part 1 (Steps 0–3). Reply `continue` to get Part 2 (Steps 4–5 and the Action Plan).

**Assumptions:**
- "Popular and trendy" means real installs and repeat use, plus appearing on GitHub Trending and the skills leaderboards, within about 90 days.
- You are the only maintainer and have limited time.
- GitHub Trending ranks repos by how many stars they gain in a short window, not by total stars. GitHub doesn't publish the formula, so this is [unverified].

**Where the repo stands (checked today on GitHub):**
- The repo was created on 2026-10-27 and has 1 star and 0 forks.
- It ships one skill, Distill v0.3.0, with a website, a social preview image, 10 topics and 3 releases.
- The space is crowded: one curated list alone indexes more than 1,000 skills.

## Step 0 - Problem Frame
**Problem:** how can a 2-day-old, one-skill, solo-run Agent Skills repo earn attention that lasts (stars, installs, repeat users) fast enough to show up where people discover skills?

**Domains:** open-source community building, the psychology of word of mouth, startup growth and distribution, and how new technology gets adopted.

**Core question:** why do a few new open-source projects get adopted and talked about while most are ignored, and what can one maintainer do about it?

## Step 1 - The Canon (Top Sources)
| # | Title | Author | Year | Core thesis | Why it qualifies |
|---|---|---|---|---|---|
| 1 | Working in Public | Nadia Eghbal | 2020 | Popular open-source projects are mostly one maintainer plus a crowd of users. The maintainer's attention is the real limit. | Modern field study of open-source maintainers (Stripe Press) |
| 2 | Producing Open Source Software | Karl Fogel | 2005, 2nd ed. online | Popularity comes from community groundwork and responsiveness, not from marketing | The standard practitioner manual. Only partly verified: the site was blocked, but the chapter titles were confirmed. |
| 3 | The Cathedral and the Bazaar | Eric S. Raymond | 1997/1999 | Build in public, release often, and treat users as co-developers | The founding open-source classic |
| 4 | People Powered | Jono Bacon | 2019 | Communities grow from a deliberate strategy, not luck | Former Ubuntu and GitHub community lead |
| 5 | Open Source Guides ("Finding Users", "Building Welcoming Communities") | GitHub | 2017 | Find users where they already are, then make newcomers welcome | GitHub's own guidance, drawn from maintainers |
| 6 | Contagious | Jonah Berger | 2013 | Word of mouth follows six drivers you can design for | Wharton research on why things spread |
| 7 | Show Your Work! | Austin Kleon | 2014 | Share your process generously and steadily, and people will find you | The creator's view, contrary to growth hacking |
| 8 | Traction | Gabriel Weinberg & Justin Mares | 2015 | Test distribution channels systematically and spend half your time on distribution | DuckDuckGo founder; source of the Bullseye method |
| 9 | Hacking Growth | Sean Ellis & Morgan Brown | 2017 | Prove people need it, then run fast experiments against one key metric | Ellis coined "growth hacking" |
| 10 | Crossing the Chasm | Geoffrey Moore | 1991, 3rd ed. 2014 | Win one narrow group of users before going broad | The standard model of technology adoption |

The mix is 5 open-source sources, 2 on word of mouth and creators, and 3 on growth and adoption. Two authors are researchers and the rest are practitioners.

## Step 2 - Extracted Rules
92 rules came from 10 sources, each extracted by its own subagent and checked against the web. Nine sources were fully verified; source 2 was partly verified.

**[1] Eghbal**
1. Ration your own attention.
2. Write down how to contribute, early.
3. Expect most users only to star or watch.
4. Publish a code of conduct before the project grows.
5. Don't push drive-by contributors into governance.
6. One maintainer with many users is a normal shape.
7. Keep the description and docs current, because strangers judge the project by them.

**[2] Fogel**
1. Look for existing projects before starting a new one.
2. Pick a distinctive name people can search for.
3. Have working code, a README and docs before announcing.
4. Set up a forum, issue tracker and website first.
5. Announce on several channels at once.
6. Treat every user as a possible volunteer.
7. Answer newcomers quickly and politely.
8. Stick to facts, skip the hype, and fit each venue's norms.
9. Expect slow growth and keep going.

**[3] Raymond**
1. Have a working version before asking for help.
2. Release early and often.
3. Treat users as co-developers.
4. Build something you need yourself.
5. Adopt users' ideas.
6. Grow the pool of testers.
7. Credit contributors visibly.
8. Lead by persuasion.
9. Hand the project off rather than let it stall.

**[4] Bacon**
1. Write down why someone should join.
2. Choose a community model.
3. Build a path from casual user to core member.
4. Offer stated incentives.
5. Give surprise rewards.
6. Share real decision-making control.
7. Track community health and adjust.
8. Get others invested in the project.
9. Hold live sessions.
10. Treat the plan as a living strategy.

**[5] GitHub**
1. Say what problem it solves and how it differs, with examples.
2. Answer questions where your audience already asks them.
3. Keep one home with clear docs.
4. Help adjacent projects before asking for attention.
5. Have a friendly README and a CONTRIBUTING file.
6. Label good first issues.
7. Respond within about 48 hours.
8. Give talks framed as a story, not a pitch.
9. Credit contributors publicly.
10. Expect growth to take months, not one launch.

**[6] Berger**
1. Make sharing it make the sharer look good (social currency).
2. Tie it to a cue that comes up often.
3. Use high-arousal emotion.
4. Make use visible to others.
5. Make the useful part passable in one sentence.
6. Wrap it in a story people retell.
7. Use scarcity.
8. Add game-like mechanics.

**[7] Kleon**
1. Post your process.
2. Share small updates on a schedule.
3. Teach what you're learning.
4. Tell the origin story.
5. Credit your influences.
6. Give more than you ask.
7. Start sharing now.
8. Treat sharing as a practice over years.
9. Take criticism calmly.
10. Let people support you.

**[8] Weinberg**
1. Spend half your time on distribution.
2. List all 19 channels.
3. Rank them and pick a shortlist.
4. Run cheap tests in parallel.
5. Put most effort into the winner.
6. Test niche communities.
7. Give away a free tool.
8. Repeat the process periodically.
9. Treat distribution as core work from day one.

**[9] Ellis**
1. Confirm people need it: at least 40% would be "very disappointed" to lose it.
2. Pick one key metric.
3. Map the funnel.
4. Get new users to the moment it clicks, fast.
5. Run experiments at a steady, fast pace.
6. Score ideas by impact, confidence and ease.
7. Write a hypothesis and log the result for each test.
8. Make growth a shared team job.
9. Build sharing into the product.
10. Repeat the "need it" survey.

**[10] Moore**
1. Pick one narrow group of users.
2. Pragmatic buyers are not early adopters.
3. Build the whole product: docs, examples, proof.
4. Show reference users.
5. Expand to neighbouring groups one at a time.
6. Write one positioning statement and use it everywhere.
7. Keep the message narrow.
8. Find a champion inside that group.
9. Expect a gap between early adopters and the mainstream.
10. Win one group before moving to the next.

## Step 3 - Consensus Ranking
**Headline:** no rule reached Core (70% or more). The two strongest rules are about being ready and keeping at it, not about going viral. Tactics like viral hooks, emotional triggers and scarcity are each backed by only 1 or 2 sources.

| Rank | Rule | Tier | Consensus | Sources | Why it works |
|---|---|---|---|---|---|
| 1 | Make the first visit pay off: have a working, documented, easy-to-try product, with install steps, examples and a current description, before you send people to it | Strong | 5/10 | 1, 2, 5, 9, 10 | Strangers judge in one visit, and most who leave never return |
| 2 | Treat promotion as a steady practice with time set aside for it, not a one-off launch | Strong | 5/10 | 2, 4, 5, 7, 8 | Trust and audience build over repeated contact, while spikes fade |
| 3 | Treat every user as a possible contributor and give them a documented, low-risk first step | Supported | 4/10 | 2, 3, 4, 5 | Most contributors start as users, and a clear first step converts them |
| 4 | Earn attention inside communities your users already belong to: give value first, and mention the project only where it's relevant, on that venue's terms | Supported | 4/10 | 2, 5, 7, 8 | Credibility earned there works better than cold self-promotion |
| 5 | Test channels cheaply in short cycles, then put most of your effort into the one that works | Supported | 3/10 | 4, 8, 9 | Real responses beat planning, and focused effort builds faster |
| 6 | Say in one sentence what problem it solves, for whom, and how it differs, and use that sentence everywhere *(borderline)* | Supported | 3/10 | 4, 5, 10 | Clear positioning lets the right people say yes within seconds |
| 7 | Release and share before it feels ready *(contested, see Contradictions)* | Supported | 3/10 | 3, 7, 8 | Early exposure brings feedback and an audience you can't get in private |

**Below 30%, not consensus (each at 2/10):**
- Credit contributors visibly (3, 5).
- Tell a story people retell (6, 7).
- Build sharing into the product itself (6, 9).
- Respond to newcomers fast (2, 5).

**Independent check:** a reviewer that hadn't built the table found the arithmetic and source credits correct, and flagged five merges as too loose. I applied the medium-confidence fixes:
- Rule 1 no longer counts Raymond.
- Rule 3 no longer counts Eghbal; she argues the opposite (see Contradictions).
- Raymond's "release early" moved to Rule 7.
- "Credit contributors" and "Tell a story" fell below the threshold.

The low-confidence flags I kept, and marked those rows borderline.

### Contradictions
1. **Promote now, or once it's ready?**
   - **Now:** Raymond, Kleon and Weinberg.
   - **Once it's ready:** Fogel (working code and docs before announcing), Moore (the whole product before mainstream users) and Ellis (prove people need it before pushing growth).
   - **It depends on the audience:** small early-adopter circles forgive rough edges, but one-shot, high-traffic launches like a Hacker News front page do not.
   - **Usual resolution:** share your progress with small audiences all along, and save the big launch for when Rule 1 holds.
2. **Grow contributors, or just users?**
   - **Contributors:** Fogel, Raymond, Bacon and GitHub want users turned into contributors.
   - **Users:** Eghbal says most users rationally just consume, one maintainer with many users is normal, and your attention is the limit.
   - **It depends on the goal:** popularity means users; long-term sustainability means contributors. A solo maintainer with one skill fits Eghbal's case.
3. **Broad appeal, or a narrow focus?**
   - **Broad:** Berger argues for wide social spread.
   - **Narrow:** Moore says a "does everything for everyone" pitch makes pragmatic users distrust it. Distill's "any problem" pitch sits on Berger's side.
   - **It depends on the stage:** broad appeal helps early awareness, and a narrow focus helps convert mainstream users.
4. **Hype, or plain substance?**
   - **Hype:** Berger supports high-arousal emotion and scarcity.
   - **Substance:** Fogel and Moore say technical audiences punish hype.
   - **It depends on the venue:** developer forums reward substance, while general social feeds reward emotion.

### Outlier Gems
1. **Tie it to a frequent cue (Berger).** Lasting word of mouth comes from cues that recur, not from one viral spike. A skill people remember every time they'd otherwise search "best way to X" gets used over and over.
2. **Win one narrow group first (Moore).** "Any problem, for anyone" makes Distill easy to admire and hard to adopt. The first group of users to win is a choice to make on purpose.
3. **Stars measure attention, not adoption (Eghbal).** Most stars cost the person nothing to give. Chasing them can hide whether anyone actually uses the skill, so track installs and repeat use alongside stars.

**Part 2** will turn this into Keenstone-specific steps:
- a check of the README and website against Rule 1;
- which communities to join, which launch venues to use, and when;
- listing Distill in Anthropic's community plugin marketplace and in the claude.ai directory (the directory needs a paid plan, so you'd submit that one);
- the root principles, a custom technique and a 14-day plan.

Sources checked: [GitHub Trending explainer](https://yuv.ai/blog/github-trending), [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills), [Claude Code: Publish a plugin](https://code.claude.com/docs/en/plugins/publish), [Claude Code: Anthropic's marketplaces](https://code.claude.com/docs/en/plugins/anthropic-marketplaces)

---

> **User:** continue

---

# Distill: How to make Keenstone popular and trending (Part 2)
The consensus table from Part 1 is unchanged. This part covers Steps 4–5 and the Action Plan.

**Front-door gaps in the repo:**
- **The website's example table is made up.** It is labelled "illustrative". For a skill whose pitch is "no invented sources", a real run would be stronger proof.
- **The website's install command can fail on older Claude Code.** The one-step `/plugin install distill --marketplace shhadi/keenstone` needs Claude Code v2.1.275 or later, per Anthropic's docs. Older versions need the two-step form, which only the README shows.
- **There is no sample output** anywhere a visitor can see before installing.
- **There is no `CONTRIBUTING.md`** or first contribution to point people to.

**What's ready:** both the plugin and the marketplace pass `claude plugin validate --strict`. I ran it with Claude Code 2.1.280.

## Step 4 - Consensus Rules in Practice

### Rule 1: Make the first visit pay off (Strong, 5/10)
**How to apply:**
1. Replace the website's illustrative table with a real run, and link the full output. This run is a good candidate: no rule reached 70%, which shows Distill doesn't invent agreement.
2. Add an `examples/` folder with 2–3 real runs from different fields, with sources named. Link it from the README.
3. Give one first prompt that answers fast, such as "Quick distill: cold email for my SaaS". Quick mode gives a result in one reply instead of two parts.
4. Add a short recording of the parallel run in Claude Code. Ten sources extracted at once is a striking thing to watch.

**Example:** someone lands from a Reddit thread. They see a real ranked table with named books, copy the install command, and have their own ranked rules in a few minutes. The ones who get there are the ones who star the repo.

**Common mistake:** polishing looks while the proof is missing. The recent pull requests went to the icon and the landing page. The next ones should go to real examples.

### Rule 2: Promote steadily, not with one launch (Strong, 5/10)
**How to apply:**
1. Set aside a fixed weekly block for distribution. Weinberg's rule, translated: give getting skills to people as much time as building them.
2. Post one real Distill run a week, on a question people in your target community are asking that week.
3. Treat every release tag as a fresh, smaller announcement. Your releases are already automated.

**Example:** every Monday you run Distill on that week's hot question, post the ranked table, and link the full run.

**Common mistake:** one big launch day, then silence. GitHub Trending rewards stars gained in a short window, so a single spike leaves the list and doesn't come back.

### Supported rules (one line each)
3. **Turn users into contributors.** Add a `CONTRIBUTING.md` with one low-risk contribution: "add your real Distill run to `examples/`". Keep it light, since you're solo (Eghbal's warning).
4. **Earn attention in communities.** Answer real "what's the best way to…" questions in the Claude subreddits and Discord with a real distilled answer. Mention Distill in one line at the end.
5. **Test channels, then commit.** For 4 weeks, run three cheap channel tests:
   - plugin and skill directories;
   - community answers;
   - one content channel (posts or short video).

   Then put most of your effort into the one with the best stars per hour.
6. **One-sentence positioning.** The tagline says how Distill works, not what it does for you. Add a sentence like: *"Distill makes your AI show what the top 10 experts on your problem agree on: ranked, sourced, and with the disagreements left in, instead of one confident answer from nowhere."* Use it on the website, the GitHub description, the plugin manifest and any directory listing.
7. **Share before it's ready, but launch once.** Show the next skill in progress to small audiences. Save the one big launch (Show HN or Product Hunt) until the Rule 1 fixes are done.

## Step 5 - Root Principles
1. **Strangers decide in seconds, based on proof.** A first visit is a one-shot trial. People judge by visible evidence (something that works, a real output), not by claims.
2. **Trust builds over time; spikes fade.** Reach comes from repeated contact. GitHub Trending measures speed of gain, so you need repeated bursts, not one.
3. **Borrow trust from existing communities by giving first.** Your audience has already gathered somewhere and trusts each other. You get in by being useful there, not by broadcasting.
4. **People share what makes them look smart or helps a friend.** The output itself should be the thing worth passing on.
5. **Focus beats spreading thin.** Your attention and the market's are both limited. One target group and one channel at a time wins.
6. **Real results beat predictions, so measure use, not attention.** You can't know in advance which message works. Cheap tests tell you, and stars are a weak sign of real use.
7. **People invest in what they can shape and get credit for.**

### Rule → Principle Map
| Principle | Rules it generates | One-line explanation |
|---|---|---|
| 1. Proof in seconds | R1, R6, respond fast | The first visit and first reply decide whether a stranger stays |
| 2. Trust builds over time | R2, R7, frequent-cue gem | Repeated contact builds reach; a single launch fades |
| 3. Give first in communities | R4 | Trust you earn inside a group beats cold promotion |
| 4. Share what flatters or helps | Story, built-in sharing | The output is the ad if it's worth passing on |
| 5. Focus | R5, R6, narrow-group gem | Concentrated effort reaches critical mass |
| 6. Results beat predictions | R5, R7, stars-are-not-use gem | Tests and the right metric beat guessing |
| 7. Ownership and credit | R3, credit contributors | People stay where their work is seen |

**Completeness check:** every rule and gem from Part 1 traces back to at least one principle.

### Your Custom Technique: "Distill in Public", a weekly proof loop
1. **Pick one target group: Claude Code users.** They install with one command, they get the parallel run, and they gather in a few places. Expand later, one group at a time: Codex and Cursor users via `npx skills`, then chat-only users. *(Principle 5)*
2. **Fix the front door** using the four Rule 1 steps. The bar to pass: 2 of 3 people who have never seen Keenstone get a first result in under 5 minutes without help. *(Principle 1)*
3. **Weekly proof post.** Take a question the group is actually asking that week, run Distill, and publish the real table with sources credited. Make the table the centrepiece. *(Principles 2 and 4)*
4. **Answer where the question was asked,** and mention Distill in one line at the end. *(Principle 3)*
5. **Test three channels for 4 weeks.** *(Principle 6)*
   - Community answers.
   - Directories: Anthropic's plugin directory, submitted at `claude.ai/directory/manage` with a paid plan. That pipeline also feeds the community marketplace, which auto-closes pull requests opened against its repo.
   - Curated "awesome" lists.
6. **Repeat one cue everywhere:** *"Before you Google 'best way to…', distill it."* *(Principles 2 and 4)*
7. **One launch moment,** after the front door passes and you have about 4 weeks of posts. A 2025 study of AI tools on Hacker News reports that posts made between 12:00 and 17:00 UTC gained more stars. I only saw a search summary of it, not the paper, so treat that as [unverified]. *(Principles 1 and 2)*
8. **Let users in.** Accept examples from other people and credit them in the README. *(Principle 7)*

**How to measure it:**
- **Main metric:** real runs shared by people other than you. This is the clearest sign of actual use.
- **Secondary metrics:**
  - stars gained within 48 hours of each post;
  - views to stars, from GitHub's Insights → Traffic page;
  - directory install counts, once Distill is listed.

**What to adjust:**
| What you see | What it means | What to change |
|---|---|---|
| Many views, few stars | The front door is failing | Return to Rule 1 |
| Stars but no shared runs | Attention without real use | Shorten the path to a first result |
| Posts get no response | Wrong group or wrong question | Pick questions from the group's own threads |
| One channel clearly wins | You've found your channel | Move most of your effort there |

## Action Plan
**Start this week:**
1. **Rule 1 (front door).** Send the repo link to one person who has never seen it and ask them to get a first Distill answer. Watch without helping and note every place they get stuck. About 15 minutes.
2. **Rule 2 (steady practice).** Add a recurring weekly "Keenstone distribution" block to your calendar, with the first one within 7 days. About 5 minutes.
3. **Rule 4 (communities).** Find 3 threads from this week in the Claude subreddits or Discord that ask "what's the best way to…", and save the links. They become your first proof posts. About 10 minutes.

**Tracking:** keep one weekly log row with these columns: date, what you posted, where, hours spent, stars gained in 48 hours, views, and runs shared by others.

**14-day review (2026-11-12):**
- Did the stranger test pass?
- Which channel gave the most stars per hour?
- Did anyone else share a run?
- What should come in next from the table? Candidates are Rule 3 (`CONTRIBUTING.md`), Rule 7, or a test of an optional one-line "Distilled with Keenstone" footer in the output. Only 2 of 10 sources support that footer, so it's an experiment, not consensus.

Sources: [Publish a plugin](https://code.claude.com/docs/en/plugins/publish), [Install plugins (v2.1.275 requirement)](https://code.claude.com/docs/en/discover-plugins), [Anthropic's marketplaces](https://code.claude.com/docs/en/plugins/anthropic-marketplaces), [claude-plugins-community](https://github.com/anthropics/claude-plugins-community), [Launch-Day Diffusion (arXiv 2511.04453)](https://arxiv.org/abs/2511.04453)
