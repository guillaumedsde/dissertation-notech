# Timelog

- Why is This Sensitive?: Visualising Important Sensitivity Classification Features
- Guillaume DE SUSANNE D'EPINAY (2270405d)
- Supervisor: Craig Macdonald
- 2nd Supervisor: Graham McDonald

## Guidance

- This file contains the time log for your project. It will be submitted along with your final dissertation.
- **YOU MUST KEEP THIS UP TO DATE AND UNDER VERSION CONTROL.**
- This timelog should be filled out honestly, regularly (daily) and accurately. It is for _your_ benefit.
- Follow the structure provided, grouping time by weeks. Quantise time to the half hour.

## Format

```markdown
## Week 1

### 19 Oct 2019

- _4 hours_ Read the project guidance notes
- _0.5 hour_ Created GitLab repository and cloned the cookiecutter for the projects
- _1 hour_ Modified dissertation template, compiled

## 20 Oct 2019

- _1 hour_ meeting with supervisor
- _2 hours_ writing initial version of test harness
```

## Content

### 23/09/2019

- **2 hours** looking over scikit introduction to Machine learning as well as running and understanding one of their practical text classification examples

### 24/09/2019

- Attended **4 hours** induction on Level 4 project
- **2 hours** setting up a logbook static website, creating Gitlab group and repositories and researching potential technology stacks

### 25/09/2019

- **2 hours** looking over LIME machine learning output explanation and associated paper
- **30mins** meeting with Craig and Graham regarding planning and outline of features for product
- **3 hours** cloning repositories to github, train ML pipeline with sci-kit, tried with some success to cateogorize some news article

## 26/09/2019

- **2 hours** research python frameworks for API, implemented LIME explainer, maintain repositories and create classifier repository

## 29/09/2019

- **1 hour** Working on text extraction, notably from Snowden Leaks

## 30/09/2019

- **2 hours** improving text extraction, text pre-processing and code structure

## 01/10/2019

- **2 hours** Discovering spaCy NLP framework and working on code structure

## 02/10/2019

- **2 hours** Preparing meeting, automating builds of markdown to PDF for notech repo, working on code structure
- **30 mins** meeting, discussed progress, data, its labels, methodology for analysis

## 03/10/2019

- **2 hours** working with received dataset, and programming a k-fold cross validation

## 05/10/2019

- **4 hours** cleaning up code, researching and trying to implement explainers other than lime (unsuccessful), generating Lime visualisations

## 07/10/2019

- **2 hours** following tutorial for ReactJS frontend framework

## 08/10/2019

- **2 hours** researching Machine Learning model explainers and implementing ELI5 explainer
- **3 hours** trying to implement SHAP KernelExplainer and eli5 feature permutation, as well as following more ReactJS tutorials

## 09/10/2019

- **2 hours** preparing meeting and trying to implement SHAP TreeExplainer
- **30 mins** meeting, talk about API specifications, designing requirements and sensibility of data
- **2 hours** working on swagger specification, settting up its repo with CI and generating conexion project from it.

## 10/10/2019

- **3 hours**
  - looking over swagger API specification
  - updating it to OpenAPI v3.0 spec
  - added missing descriptions
  - setting up CI pipeline for documentation generation as well as OpenAPI specficiations validator. Generate
  - generated conexion API from OpenAPI specification
  - started work on adapting classification code for API (and cleaning it up)

## 13/10/2019

- **3 hours** exploring OpenAPI specification, making API spec more restful, start from scratch adding endpoints one at a time

## 15/10/2019

- **4 hours** work on MoSCoW requirements, OpenAPI specifications and SQLAlchemy ORM for Basic document set creation and file upload (still WIP)

## 16/10/2019

- **4 hours** working on Flask API, added document set creation and SQL model generation from OpenAPI specification and marshmallow serialization

## 17/10/2019

- **3 hours** going over java backend implementation, writing Dockefile for compiling and running it

## 20/10/2019

- **2 hours** more progress on ReactJS course, some thoughts on the application and the rescope

## 22/10/2019

- **2 hours** Research and wireframing

## 23/10/2019

- **30 mins** preparing meeting

## 29/10/2019

- **3 hours** initial ReactJS app, adapting the JS client to React (using promises etc...)
- **2 hours** Research and testing of alternative redaction products for inspiration, reflection on app design, still need to wireframe

## 01/11/2019

- **2 hours** cleanup of old projects and migration to ElasticSearch + Flask + React stack

## 03/11/2019

- **3 hours** Creating new API client and migrating frontend to it

## 04/11/2019

- **2 hours** working on ReactJS front and API document upload

## 05/11/2019

- **11 hours** working on ReactJS frontend and python API, implemented document visualization and classification with sensitivity explanation

## 06/11/2019

- **6 hours** meeting preparation, meeting, work on frontend and toggling visualizations

## 07/11/2019

- **2 hours** converting to monorepo and work on adapting CI pipeline

## 08/11/2019

- **3 hours** trying to get SHAP explanations from predictions

## 11/11/2019

- **3 hours** working on frontend, and further work on SHAP explanations

## 12/11/2019

- **8 hours** trying to get multiple file upload working, more work on frontend, notably popover menu

## 12/11/2019

- **8 hours** trying to get multiple file upload working, more work on frontend, notably popover menu

## 13/11/2019

- **2 hours** Working on CI

## 15/11/2019

- **3 hours** Working on popover menu for redactions and API spec
  for redactions

## 18/11/2019

- **4 hours** Working on API for redactions, migration to MongoDB and API endpoint for redactions

## 20/11/2019

- **6 hours** Working on frontend for redactions

## 27/11/2019

- **10 hours** Working on frontend redaction functionality, some backend API tweaks

## 11/12/2019

- **6 hours** Research on document visualization techniques

## 13/12/2019

- **6 hours** Implement a sensitivity visualization

## 15/12/2019

- **6 hours** further work on sensitivity visualization and classify documents on load

## 16/12/2019

- **7 hours** classify on files on upload, bugfixes, layout tweaks

## 17/12/2019

- **6 hours** more layout tweaks, bugfixes, work on API spec, added navigation

## 19/12/2019

- **6 hours** issues cleanup, work on progress report, try to implement click on feature to scroll.

## 20/12/2019

- **1 hour** Meeting preparation, progress report and meeting

## 14/01/2020

- **6 hours** UI tweaks and bugfixing

## 16/01/2019

- **3 hours** tweaks and bugfixing

## 18/01/2019

- **2 hours** Tried but failed to implement a minimap overview of document content
- **3 hours** implementing SHAP explainer

## 19/01/2019

- **4 hours** documentation, API and frontend tweaks

## 20/01/2020

- **2 hours** Research on SHAP explainer, prepare meeting

## 22/01/2020

- **7 hours** initial API modifications for paragraph level classifications

## 23/01/2020

- **2 hours** GridSearch to find best Parameters for model, research on SHAP

## 24/01/2020

- **1 hour** deploy GridSearch on DigitalOcean
- **2 hours** implement GridSearch results and bugfixing

## 25/01/2020

- **4 hours** Implementing classification at any level in the document

## 26/01/2020

- **6 hours** continue implementing classification at any level in the document and other bugfixes

## 27/01/2020

- **2 hours** repository cleanup and log progress

## 30/02/2020

- **3 hours** frontend bugfixing

## 31/02/2020

- **4 hours** working on SVM GridSearch

## 01/02/2020

- **4 hours** working on SVM GridSearch

## 02/02/2020

- **5 hours** working on SVM GridSearch and on parallel SVM implementation

## 03/02/2020

- **4 hours** working on SVM GridSearch and on parallel SVM implementation

## 05/02/2020

- **4 hours** grid search results analysis and classifier research

## 08/02/2020

- **2 hours** work on Stratified K-fold implementation

## 11/02/2020

- **2 hours** work on XGBoost Grid Search

## 12/02/2020

- **4 hours** bugfixing, trying to reproduce Craig and Graham's research

## 15/02/2020

- **5 hours** sensitivity review process research and try to reproduce Graham and Craig's classifier

## 16/02/2020

- **6 hours** sensitivity review process and user study research, bugfixing

## 21/02/2020

- **1.5 hours** implementing UI variations for user testing

## 22/02/2020

- **5 hours** Research on user evaluation, questionnaire draft, dissertation outline, selecting documents for user study

## 23/02/2020

- **7 hours** Fixing data parsing bug that led to nonsensical classifier, worked on selecting documents and dissertation outline,

## 24/02/2020

- **4 hours** working on fixing classifier code bug, tweaks in frontend UI for upcoming user study.

## 27/02/2020

- **3 hours** looking for another bug in the classifier code

## 01/03/2020

- **3 hours** looking for another bug in the classifier code

## 02/03/2020

- **10 hours** Writing dissertation, preparing user study, selecting documents

## 04/03/2020

- **3 hours** demo and feedback on application

## 05/03/2020

- **3 hours** started classifier for demo, demo script tweaks

## 08/03/2020

- **8 hours** writing dissertation, finish selecting documents for user study, finish preparing user study UI and other user study preparations

## 09/03/2020

- **2 hours** dissertation research and writing
- **1 hour** add tests to CI and implement code coverage

## 13/03/2020

- **2 hours** frontend fixes in preparation of user study

## 15/03/2020

- **8 hours** preparing user study, literature review, writing dissertation

## 16/03/2020

- **8 hours** Working on dissertation, document visualization, design and implementation

## 17/03/2020

- **2 hours** meeting, notes, and updated documentation

## 18/03/2020

- **5 hours** writing dissertation, frontend fixes, tech stack diagram

## 20/03/2020

- **4 hours** writing dissertation

## 24/03/2020

- **6 hours** writing dissertation, introduction and technology choices

## 26/03/2020

- **6 hours** wiriting dissertation, objectives, introduction and layout fixes

## 27/03/2020

- **5 hours** writing dissertation, implementation

## 28/03/2020

- **6 hours** wiriting dissertation, layout, code analysis

## 29/03/2020

- **5 hours** wiriting dissertation, fixing code styling, code analysis

## 30/03/2020

- **6 hours** writing dissertation, classifier tweaks, results

## 31/03/2020

- **5 hours** writing dissertation, preparing for meeting

## 01/04/2020

- **4 hours** writing dissertation, implementation

## 03/04/2020

- **8 hours** writing dissertation, proofreading, layout and more content

## 04/04/2020

- **6 hours** writing dissertation, proofreading, layout tweaks and conclusion

## 05/04/2020

- **10 hours** scripting and recording presentation

## 06/04/2020

- **6 hours** final touches on presentation and dissertation
