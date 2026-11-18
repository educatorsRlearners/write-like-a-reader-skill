# Worked examples

This file teaches. It shows the review Claude runs in its own reasoning. At runtime Claude never prints this analysis. The silent-review rule governs runtime behavior only, not this file.

Each question presses on the writer's claim. None asks for a plain fact or restates the sentence.

## Example 1: a blog post

**Reader:** an engineer who arrived from a link, knows software teams, and has not decided whether design docs are worth the trouble.

### The draft

> (1) Small teams should write design docs. (2) Design docs help teams make better decisions. (3) They also save time in the long run. (4) Many teams skip them because they feel like overhead. (5) This is a mistake.

### Sentence by sentence

**After (1):** "Small teams should write design docs."
- Why should a small team, which can talk in a hallway, bother?
- Next sentence: it gives a result, not a reason. Gap remains.

**After (2):** "Design docs help teams make better decisions."
- How do they make decisions better?
- Better by what measure?
- Next sentence: it moves to time. Both questions remain open.

**After (3):** "They also save time in the long run."
- Where does the time come from, given that writing takes time?
- Next sentence: it turns to objections. The question remains open.

**After (4):** "Many teams skip them because they feel like overhead."
- Is the objection wrong, or only overstated?
- Next sentence: it asserts, with no support. Gap remains.

**After (5):** "This is a mistake."
- Why is it a mistake?
- What should the team do on Monday?
- Neither is answered. The post ends.

### What the review finds

Four sentences make claims. None supplies a mechanism, an example, or a step. The reader reaches the end convinced of nothing. The gaps that block belief come first: how, and where the time comes from. The gaps that block action come next.

### The revision

> Small teams skip design docs because they can talk to each other. That is also why they need them. A hallway decision leaves no record, so three months later nobody remembers why the team chose the queue over the cron job, and someone proposes the cron job again. A one-page doc written before the decision costs an hour. It forces the author to state the options, and it lets a teammate catch a flaw before the code exists. The next time your team faces a choice it cannot easily reverse, write one page before you start, and share it before you build.

### What changed

- Sentence 1 now answers "why bother?" with the small team's own reason for skipping.
- "Better decisions" became two mechanisms: the author states the options, and a teammate catches flaws early.
- "Save time" became a concrete cost, one hour, set against a repeated debate.
- "This is a mistake" became a next step.
- Each gap took a clause, not a paragraph.

### The second pass

A reader of the revision might now ask: "What goes in the one page?" That question blocks neither belief nor action. The post is not a template guide. Ignore it.

## Example 2: a report summary

**Reader:** a manager who must decide whether to renew a vendor contract.

### The draft

> Support response times rose last quarter. The cause was a change in staffing. We should look at our options before the contract renews.

### Sentence by sentence

**After sentence 1:**
- By how much, and for which customers?
- Next sentence: it gives a cause. Neither answered.

**After sentence 2:**
- What in the staffing change slowed responses?
- Next sentence: it moves to options. Not answered.

**After sentence 3:**
- Which options, at what cost?
- What do you want me to decide, and by when?

### The revision

> Median response time rose from 4 to 9 hours last quarter, mostly on weekends, after the vendor cut weekend staff in July. The contract renews at the end of the quarter. Decide within two weeks whether to renew as is, renew with a weekend-coverage clause, or move to the in-house team, which costs about the same and covers weekends.

The figures above stand in for facts the writer must supply. Claude takes real figures from the project's files or from the user. If neither has them, Claude asks one plain question or cuts the claim.
