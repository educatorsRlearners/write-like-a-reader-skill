# Write Like a Reader

A Claude Code skill that makes Claude read its own prose as the reader would, and close the gaps, before it delivers the text.

## What it does

When Claude writes or substantially revises expository prose, it reads the draft one sentence at a time. After each sentence it asks what the reader would now want to know. Where the next sentence does not answer, Claude adds the missing reason or example, moves the answer closer, restructures, or cuts the claim. The review is silent: you see only the improved text.

## Install

**Plugin marketplace:**

```
/plugin marketplace add educatorsRlearners/write-like-a-reader-skill
/plugin install write-like-a-reader@write-like-a-reader
```

**Script:** run `./install.sh` to copy the skill to `~/.claude/skills/`. Run `./install.sh --project` to copy it to `./.claude/skills/` instead. Running it twice leaves one clean copy.

**Manual:**

```
cp -R skills/write-like-a-reader ~/.claude/skills/
```

## How it triggers

Ask Claude for any longer piece of explanation, argument, or instruction:

- "Write a blog post about why small teams should write design docs."
- "Draft a proposal for moving our builds to a remote cache."
- "Write a 600-word guide to setting up the staging environment."
- "Tighten this draft so a reader isn't left with questions."
- "Write a README for this project."

The skill applies to any expository text of more than a couple of paragraphs, whatever the file format.

## How it works

1. Name the reader and what they need from the text.
2. Draft as usual.
3. Read the draft one sentence at a time. After each, list the questions the reader would now ask.
4. Check the next sentence only. If it answers, drop the question. Otherwise it is a gap.
5. Close each gap that matters, by the lightest fix.
6. Re-read the changed passages. Stop after two passes.
7. Deliver the text.

## What it does not do

- It does not show questions, notes, or reports.
- It does not touch code, configuration, commit messages, short replies, or creative writing.
- It does not check grammar or spelling as a separate pass.
- It does not invent facts. When a gap needs a fact Claude cannot find, Claude asks one plain question or cuts the claim.
- It has no options.

## Credits

- The classroom exercise: [Learning to Write Like a Reader](https://teachinglearninglearningteaching.wordpress.com/2015/01/26/learning-to-write-like-a-reader-teaching-students-how-to-edit-and-do-peer-review/).
- The student-facing demo app: [write-like-a-reader](https://github.com/educatorsRlearners/write-like-a-reader). In the app, a second model checks the answers and the student closes the gaps. In this skill, Claude does both.
- Author: Evan Simpson ([educatorsRlearners](https://github.com/educatorsRlearners)).

## License

MIT. See [LICENSE](LICENSE).
