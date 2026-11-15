# Solution

**Step 3:** When asked to edit directly on GitHub, I added an additional step to pull those changes in GitKraken, so I could continue developing there with the latest updates (already made on GitHub).

**Step 4:** Since the change from step 3 was already pulled, there was no `pass` left to replace, so I only added the mentioned line of code. This way the constructor has two instance attributes, one added on GitHub (username) and the other in VS Code (bio).

**Step 6:** Because I pulled after step 3, I didn't reach a dead end in step 6, and my push went through without being rejected.

**Step 12:** I created feature/step-3 from feature/step-1, because main_runner.py only exists on that branch.

**Step 13:** Since I did a practice run of this assignment while exploring the GitKraken tool, step 1.c was overlooked when I created the clean (submission-ready) repository. So, when I created the PR of feature/step-3 into develop, I noticed GitHub Actions running at the end of the PR and not updating the merge status. At this step I disabled GitHub Actions in the repository settings, as requested, and the PR status updated accordingly. The instructor's collaborator invite was still pending, so I couldn't assign him as a reviewer yet; I will add him as soon as he accepts. The PR stays open for his review.

**Step 17:** Since step 16 was not pushed yet, develop and feature/step-4 were identical on GitHub, and there was nothing to compare. I first pushed the changes of feature/step-4 and then created the PR.

**Step 19:** I created a new PR where I carried out the steps I mentioned as a reviewer in the "bad" PR, "Some changes". In the new PR I left a comment, "Approved on behalf of a valid reviewer", and then merged it. Back on the old "Some changes" PR, I added a comment saying that this is handled in another PR (with its link) and closed it.

**Step 21:** Considering that in the real world "the production-ready code" is the merged PRs, and with everything pulled from GitHub, I created a new release branch called "release-1.0" from the develop branch and merged it into master. Additionally, I created an annotated tag "v1.0" and pushed these changes to GitHub. This release does not contain the PR that is pending review, or any changes that were only committed and never merged or opened as a PR to be merged later (more details at the end of this file).

**Step 22:** For the requested feature, I created a new branch, feature/step-5, from develop, added the `__str__` method mentioned in the assignment, and pushed the change. Since the hotfix from step 23 was done while this feature was still in progress, I merged develop into feature/step-5 to bring in the fix, and then merged feature/step-5 into develop locally in GitKraken and pushed develop.

**Step 23:** For the production bug, I created a "hotfix-1.0" branch from master and fixed the typo in the username assignment. I merged it into master, created an annotated tag "v1.1", and merged it into develop as well, so the fix is not lost in the next release. Then I pushed everything to GitHub.

### Final note

Looking at the tree representation in GitKraken, feature/step-1 was not included in the release, since it was never made into a PR and was not specifically requested to be merged (as per the assignment steps). The same goes for feature/step-3, which has no approval to be merged yet. Following what I mentioned in step 21, as part of the release and delivery to the customer, all PRs that were merged (had the required approvals and were requested to be merged) should be included in the release, and everything else is excluded from this specific release. If this was done by mistake and we want that feature included, there are two possible solutions:

- If we are fine with having this feature in the upcoming release, we merge it into the develop branch, and it will be included in the next release (for example v2).
- If we absolutely need this feature delivered now, we still merge it into develop first, and then create a new release branch from develop (for example release-1.1), merge it into master and create a new annotated tag. Features should not go directly into master; that path is only for hotfixes of production bugs.