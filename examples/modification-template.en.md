# Software Modification Instruction Template

> Use this to tell AI precisely *what to change, what it should become, and what not to touch*.
> Related to: Chapter 14 (core), Chapters 15, 16, 17.

---

## Basic Template (copy and fill in)

```text
Please modify the software as follows:

[1. Current problem]
Which page / feature, what it looks like now, and what's wrong.
(a screenshot helps)

[2. Desired result]
What it should look like / achieve after the change.

[3. Scope of change]
Only change: ______ (name the page / feature / file explicitly)
Do not change: ______ (list what must stay untouched)

[4. Before-and-after behavior]
Before: user does X, result is Y
After: user does X, result should be Z

[5. How to proceed]
First tell me your modification plan,
then wait for my confirmation before you act. Change only this one thing.
When done, tell me how to verify it worked and what else might be affected.
```

## Filled Example (Flower Shop Helper)

```text
Please modify the software as follows:

[1. Current problem]
On the "Order List" page, each row only shows the customer name and phone.
I can't tell how many days are left until delivery without clicking in. See screenshot.

[2. Desired result]
Each row should directly show "N days until delivery",
and if it's 1 day or overdue, show it in bold red.

[3. Scope of change]
Only change: the order list page
Do not change: the new-order form, customer management page, stats page, data structure

[4. Before-and-after behavior]
Before: list shows "Aunt Wang / 138xxxx / May 10"
After: list shows "Aunt Wang / 138xxxx / May 10 (2 days left)"

[5. How to proceed]
Tell me your plan first, then wait for my confirmation.
Change only this one thing. When done, tell me how to verify it.
```

## Why Write It This Way (key points)

1. **Don't just say "change it"** — AI won't know where or to what.
2. **Describe the current problem + desired result** — give AI the start and the goal.
3. **State the scope, and list what NOT to change** — this is the key to avoiding wrong or side-effect changes.
4. **Give a concrete before-and-after example** — far more accurate than abstract description.
5. **Ask for a plan first, confirm, then change one thing at a time** — easy to locate problems, and prevents a growing mess.
