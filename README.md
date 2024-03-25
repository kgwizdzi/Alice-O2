# Alice-O2 framework
## Table of contents
* [General information](#general-information)
* [FemtoUniverse](#femtouniverse)
* [Git](#git)
* [Notes](#notes)
## Genral information
This repository is dedicated to the O2 software. 

Here is the link to the O2 Analysis Framework Documentation: https://aliceo2group.github.io/analysis-framework/.

## FemtoUniverse
FemtoUniverse is a part of the O2 framework, the code can be found in the `O2Physics/PWGCF` folder.

It is used and developed for femtoscopy and angular correlations.

### Skimmed data with FemtoUniverse producer
The task `femtoUniverseProducerTask.cxx`, which can be found in the `O2Physics/PWGCF/FemtoUniverse/TableProducer`, is used to create smaller data files (to create so-called skimmed data).
FemtoUniverse producer from the input file `AO2D.root` creates a file with the selected information, which is saved in the output file called `FemtoAO2D.root`.
In the FemtoUniverse producer we can choose which particles we want to save. We can save tracks (kaons, pions, protons), V0s, phi and charmed mesons.
To save the selected particles you need to run the corresponding process, for example, to save charmed mesons and tracks you need to run the `processTrackD0mesonData` process.

To run the `femtoUniverseProducerTask.cxx` locally, you need the following files:
* `prod.sh`,
* `prod-Run3.json`.

Note: On my github, they are prepared to save charmed mesons and tracks. 

If we already have a file with stored particles. Then we can run the task with the analysis we want to perform (in this case, it is the analysis of angular correlations).

### Angular correlations of charmed mesons
The task dedicated to this analysis is `femtoUniversePairTaskTrackD0.cxx`.

To test the code locally, two files are needed:
* `run-D0-task.sh`,
* `task-config.json`.

So far, in the task you can find the following process functions:
* `processD0mesons` (filling basic plots for D0/D0bar mesons),
* `processSideBand` (creating D0-D0bar pairs and filling histograms to obtain the angular correlations using side-band method)
* `processSameEvent` (creating the &Delta;&eta;&Delta;&phi; plots for same event)
* `processSameEventMC` (as above, but with Monte Carlo)
* `processMixedEvent` (creating the &Delta;&eta;&Delta;&phi; plots for same event)
* `processMixedEventMC` (as previous one, but with Monte Carlo)

## Git
Git guide: https://github.com/git-guides
### Branches
* `git checkout -b new-branch-name` -> Use to create a new branch.
  
  Note: When you create a new branch you are automatically switched to it.
* `git branch -vvv` -> Use to check which branch you are on.
* `git checkout branch-name` -> Use to switch to an existing branch.
### Keep your branch up to date and solve conflicts
* `git fetch upstream`
* `git rebase upstream/master`
### Other commands
* `git status` -> Use to display paths/files that are changed from the current HEAD commit
  
  For more go here: https://github.com/git-guides/git-status
* `git add` -> Use to add new and/or changed files from your working directory to the Git staging area
  
  For more go here: https://github.com/git-guides/git-add
