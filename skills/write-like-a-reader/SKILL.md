---
name: write-like-a-reader
description: ALWAYS use this skill before writing or substantially revising any blog post, essay, article, report, proposal, guide, documentation, README, or long email, or any text of more than a couple of paragraphs that explains, argues, informs, or instructs. Also use it when the user asks to check, tighten, or clarify a draft from the reader's side. Invoke it first, before drafting. It applies silently. Not for code, config, commit messages, short replies, small edits, or fiction and poetry.
---

# Write Like a Reader

Write the draft, read it as your reader would, and close every gap you find. Do this silently. The user sees only the improved text.

## When to use it

Use it for expository prose of more than a couple of paragraphs: text that explains, argues, informs, or instructs. Blog posts, essays, articles, reports, proposals, guides, documentation, READMEs, and long emails all qualify. So does any draft the user asks you to check from the reader's side.

Skip it for code, configuration, commit messages, short replies, edits of a sentence or two, and creative writing.

## Procedure

1. **Name the reader.** Decide who will read this and what they should know, believe, or do afterward. For example, a blog post reader is a practitioner who arrived from a link, knows the field but not your argument, and decides within a paragraph whether to keep reading. A report reader is a manager who must act on the findings.

2. **Draft.** Write the text as you normally would.

3. **Read one sentence at a time.** After each sentence, ask what the reader now wants to know about the claim. Write down zero to three questions. Zero is common. Ask about substance, not grammar. See `references/question-types.md`.

   A good question presses on the claim and asks the writer to say more: how, why, in what way, to what extent, for whom, under what conditions. A bad question asks for a fact, restates the sentence as a question, or asks something the sentence already answers.

   Example. The sentence is "Cell phones have changed the way people communicate." Good: "How have cell phones changed the way people communicate?" Bad: "What has changed the way people communicate?" (the sentence answers it: cell phones.) Also bad: "When were cell phones invented?" (a fact to look up, not a gap in the writer's thinking.)

4. **Check the next sentence only.** If it answers the question, drop it. If the answer comes later or never, you have a gap. A reader who waits has stalled.

5. **Close the gaps that matter.** Choose the lightest fix:
   - add the missing fact, reason, or example;
   - move the answer next to the claim;
   - restructure the passage;
   - cut or soften a claim you cannot support.

   Do not state statistics, study results, quotes, or sources from memory. If the user asked for them and none are in the project, the conversation, or command output, leave them out and say what you left out. If one fact blocks the whole piece, ask for it in a single question, never a list.

   When the user asked you to revise, always return the revised text. Never cut or soften a claim the user wrote. If a claim of theirs lacks support, leave it and say so in one plain sentence after the text, naming the claim and the fact that would support it. Say this only about text you wrote or changed. When the user asked you to add to a text, say nothing about the rest of it.

6. **Re-read what you changed.** Fixes raise new questions. Re-read the changed passages once more, then stop. Two passes in all.

7. **Deliver the text.**

## Rules

- **Stay silent about the method.** Do not print questions, annotations, or a gap list. Do not mention this skill in your reply. Report the work as you normally would.
- **Never invent facts to close a gap.** Look in the project files, command output, and the conversation. If the fact matters and only the user has it, ask one plain question. Otherwise cut or soften the claim.
- **Ask no factual questions.** Do not ask what a search could answer, what the sentence already states, or what the reader could find in a reference. Ask only what the writer's own claim leaves open. If the only open question is a plain fact, you have no gap.
- **Keep it short.** Closing a gap must not pad the text. Most gaps need a clause. Ignore questions the reader would not care about. Answer first the questions that block action or belief.
- **Read the whole text once.** For long documents, work section by section, then check across sections. A term used before it is defined is a gap.
- **Respect the user's text.** When revising, review only what you wrote or changed. Keep the user's voice and structure.
- **Leave no trace in the project.** Do not write review notes into the user's repository. Use `/tmp` if you need scratch space.

## More detail

- `references/question-types.md`: open it when a sentence raises a question and you must judge whether it is a gap.
- `references/document-types.md`: open it when the draft fits a known type. It lists the reader's questions in order, plus a general fallback.
- `references/worked-example.md`: a draft, its gaps, and the revision.
