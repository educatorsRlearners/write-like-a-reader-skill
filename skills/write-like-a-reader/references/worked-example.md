# Worked examples

This file teaches. It shows the review Claude runs in its own reasoning. At runtime Claude never prints this analysis. The silent-review rule governs runtime behavior only, not this file.

Each question presses on the writer's claim. None restates the sentence.

Examples 1 and 2 start from Claude's own first draft. Claude may rewrite its own claims freely, but it never invents a fact to do so. Example 3 starts from the user's draft. Claude keeps every claim the user wrote.

## Example 1: a blog post (Claude's own draft)

**Reader:** an engineer who arrived from a link, knows software teams, and has not decided whether design docs are worth the trouble.

### The draft

> (1) Small teams should write design docs. (2) Design docs help teams make better decisions. (3) They also save time in the long run. (4) Many teams skip them because they feel like overhead. (5) This is a mistake.

### Sentence by sentence

**After (1):** "Small teams should write design docs."
- Why should a small team, which can talk in a hallway, bother?
- Next sentence: it gives a result, not a reason. Gap remains.

**After (2):** "Design docs help teams make better decisions."
- How do they make decisions better?
- Next sentence: it moves to time. The question remains open.

**After (3):** "They also save time in the long run."
- Where does the time come from, given that writing takes time?
- Next sentence: it turns to objections. The question remains open.

**After (4):** "Many teams skip them because they feel like overhead."
- Is the objection wrong, or only overstated?
- Next sentence: it asserts, with no support. Gap remains.

**After (5):** "This is a mistake."
- Why is it a mistake?
- What should the team do next?
- Neither is answered. The post ends.

### What the review finds

Four sentences make claims. None supplies a mechanism, an example, or a step. The reader reaches the end convinced of nothing. The gaps that block belief come first: how, and where the time comes from. The gaps that block action come next.

### The revision

> Small teams skip design docs because they can talk to each other. That is also why they need them. A hallway decision leaves no record. Say a team picks a queue over a cron job. Three months later nobody remembers why, and someone proposes the cron job again. A one-page doc written before the decision records the options and the reason for the choice. It also lets a teammate catch a flaw before the code exists. The next time your team faces a choice it cannot easily reverse, write one page before you start, and share it before you build.

### What changed

- Sentence 1 now answers "why bother?" with the small team's own reason for skipping.
- "Better decisions" became two mechanisms: the doc records the options and reasoning, and a teammate catches flaws early.
- "Save time" became a repeated debate. The scenario is hypothetical, and the text says so ("Say a team…"). It has no hours, percentages, or study, because Claude has no figures.
- "This is a mistake" became a next step.
- Most gaps took a clause or a sentence. The scenario, the longest fix, took three.

### The second pass

A reader of the revision might now ask: "What goes in the one page?" That question blocks neither belief nor action. The post is not a template guide. Ignore it.

## Example 2: a report summary when the facts are missing

**Reader:** a manager who must act on the finding.

**The request:** "Write a one-page report summary for my manager on why our weekend support response times got worse." The project holds no support data. Nothing earlier in the conversation mentions any.

### The draft

> (1) Weekend support response times got worse. (2) The cause was a change in staffing. (3) We should look at our options.

### Sentence by sentence

**After (1):**
- Worse to what extent, and for whom?
- Next sentence: it gives a cause. Not answered.

**After (2):**
- How did the staffing change slow responses?
- Next sentence: it moves to options. Not answered.

**After (3):**
- What follows: which option do you recommend?
- Nothing follows. The summary ends.

### What the review finds

Each gap needs a fact: the size of the slowdown, the mechanism, the recommendation. Claude holds none of them. They are not in the project, the conversation, or any command output. Every sentence in the draft is a guess, and a manager would act on a guess. Claude cannot close the gaps by writing figures, so it writes none. The missing facts block the whole piece, so Claude does not deliver a draft.

### The reply

> I have no data on your weekend response times or on what changed. What do you know about how much they rose and why?

Two sentences: the first says which fact is missing, and the second asks for it as one question. No examples, no list of formats, and no plan for afterward.

## Example 3: revising the user's draft

**Reader:** an engineer deciding whether to try smaller pull requests.

**The request:** "Tighten this so a reader isn't left with questions."

### The user's draft

> (1) Teams that keep changes small ship faster. (2) They also find more bugs. (3) It is a simple habit that pays off.

### Sentence by sentence

**After (1):**
- How does a small change get a team to ship faster?

**After (2):**
- How does a small change surface more bugs?
- How do you know?

**After (3):**
- What is the habit, and what should I do first?

### What the review finds

The mechanism questions close with reasoning: a short change gets a quicker review, and a bug stands out in a short diff. Reasoning is not a fact from outside, so Claude may add it. "How do you know?" needs a source Claude does not have. Both claims are the user's, so Claude keeps them. It does not cut them, and it does not soften them.

### The reply

> Teams that keep changes small ship faster. A short change gets a quick review instead of waiting in the queue, and it is less likely to need rework. They also find more bugs, because a bug stands out in a short diff and hides in a long one. The habit is simple: split each feature into independent changes, and review and merge each on its own.
>
> I kept "ship faster" and "find more bugs" as you wrote them, but no source here supports either, and a figure from your own team would.

The text keeps the user's claims and adds only reasoning. The closing note names each unsupported claim and the fact that would support it, in one plain sentence. It says nothing about reader questions or method.
