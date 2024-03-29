# Meetings summary

## 25/09/2019

### Meeting

- don't post sensitive information especially since working with classified documents
- Compare different text classification methods
- write user stories for the final product
  - with inspiration from other similar products such as redactify
- will be working in sprints with some form of sprint planning
- ideas regarding final product and tech stack
- Craig and Graham have a swagger specification for an API format already drafted
- Communication over Slack channel

## 02/10/2019

### Preparation notes

- Used scikit-learn and 20 newsgroup dataset to build text catergorization program using _bag of words_ approach
  - built pipeline, text pre-processing,
  - I used different clasifier algorithms, I don't know how any of them work
  - I don't have a performance measure for these classifier algorithms
    - sci-kit learn has some benchmarking tests
    - but might perform differently depending on data and categories
  - taking a 2 categories approach, sensitive, non sensitive (is this correct?)
- Using Lime explainer for text categorization
  - Lime will highlight what **makes** a document sensitive, not what **is sensitive** within the document?
    - so Lime is only a indicator of trust? Even then, the ML model might have noticed patterns in sensitive documents that might not seem obvious
- spaCy framework seems quite widely Used
  - entity extraction works ok
  - have not looked much at other features
- Potential difficulty: extracting text from document, processing it, and highlighting words in original document in order to keep structure
  - might have to restrict scope to PDFs only (and mabye raw text) in order to avoid having to find a way to render many different file types

### Meeting

- use SVM classifier
- Data + labels **ground truth** by email
- 5 fold cross validation
  - split data into 5 groups
  - create model from every 4/5 combination and run on the last fifth
- metrics
  - Balanced accuray
  - F2
- Precision
  - expectation of classification precision
- Recall
  - actual classification performance
  - We want a classfication skewed towards recall:
    - we'd rather have more manual work than release a poorly classified document
- Start documenting some requirements for the final product
  - send copy before next meeting
- create some vizualizations for the explainer
  - graph
  - highlighting in original text
- Find other explainers to compare with lime, in order to explain differences between explanations

## 09/10/2019

### Preparation notes

- Precision
  - = True Positive / (True Positive + False Positive)
  - > What proportion of positive identifications was actually correct?
- Recall
  - = True Positive / (True Positive + False Negative)
  - > What proportion of actual positives was identified correctly?
- seen quite a bit of tutorials using `GridSearchCV()`
  - what is it? Is it searching for the best parameters for a classifier?
- I've tried adding NLTK lemmatization to my Pipeline, got some improvements across the classifiers, minor except for a few of them
  - but considerably slower than previous tokenizer (not sure which one)
- performed 5 fold cross-validation
- struggled a bit with sklearn Pipeline
  - lots of the Python ML explainer modules works with the classifier only, hence when passing pipeline the steps before the classifier (vectorization ....) are not necessarily run
  - Some work fine (e.g. Lime) others, not so much, eli5 feature permutation
- I've tried measure feature importance with Permutation Feature Importance
  - have not gotten it to work `TypeError: A sparse matrix was passed, but dense data is required. Use X.toarray() to convert to a dense numpy array.`
  - I'm not sure I understand why a sparse matrix is so different from denser matrices?
- Have tried calculating SHAP values
  - Average per feature contribution to each combination of all features?
  - Explainer training too long because dataset too big
    - was told to use Kmeans
      - `NotImplementedError: subtracting a nonzero scalar from a sparse matrix is not supported`

### Meeting

- re-emphasis on being careful with data due to sensibility
- this week, focus on API, will continue working on model later
  - will work from swagger specification
  - depending on time, will start working on basic frontend
- establish requirements with MoSCow instead of User stories
  - more structured and precision following MoSCoW
  - specific to project not just general specs like "file upload"

## 17/10/2019

### Preparation Notes

- OpenAPI
  - upgraded it to OpenAPI 3.0.2 standard
  - fixed non restful routes
  - added descriptions to already existing schemas and routes
  - temporarily commented out currently unused routes
  - implemented a CI pipeline for validation of the specification using an IBM developed OpenAPI validator written in Node
  - added deployment of the specification of the rendered YAML using swagger-ui
- Flask
  - Generated OpenAPI boilerplate code
  - Automatic SQLAlchemy model generation from OpenAPI schemas
  - Document set creation

### Meeting

- review of requirements
- focus on frontend, will try to use premade java backend
- will need some wireframes

## 23/10/2019

### Preparation Notes

- have worked on Dockerfile for easy compiling and running of Java rest API implementation
- have followed some more React Tutorials (frontend masters course)
- have researched UIs and drawn up some wireframes
  - get rid of hamburger menu
    - vertical sidebar?
    - keep burger menu to expand sidebar to include text next to action icons?
    - replace _Save Document_ with _Save redactions_?
  - remove redaction accross entire document and/or entire document set?
  - undo?

### Meeting

- toggles for turning off suggested/real redactions
- lookup different FOI categories
- evaluate current redaction processes even if bad like MS word replace text
- redaction legislation context
- eredact.co.uk
- comments vs annotations (or comments in annotations)

## 08/11/2019

### Preparation Notes

[most preparation notes are here](https://dissertation.guillaume.desusanne.com/posts/app-stack/)

### Meeting

- Discussion on ElasticSearch pros and cons
- Demo of first frontend draft
- some features to try and implement
  - toggles for different explainers
    - e.g. SHAP values
  - toggles for positive negative explanations
  - gradual opacity based on feature weight

## 13/11/2019

### Preparation Notes

- [Preparation notes on SHAP explainer](https://dissertation.guillaume.desusanne.com/posts/shap-explainer/)
- [Preparation notes on UI improvements](https://dissertation.guillaume.desusanne.com/posts/ui-improvements/)

## 20/11/2019

### Preparation Notes

- [Preparation notes on implementing redactions and switching to MongoDB](https://dissertation.guillaume.desusanne.com/posts/implementing-redactions/)

### Meeting

- accept, accept all, reject all LIME explanations
- redact all button
- LIME explanations as character offset to keep track of markup locations
- wireframe chip around keyboard with % contribution
- spec V2 document

## 27/11/2019

### Preparation Notes

- [Preparation notes on implementing redactions and switching to MongoDB](https://dissertation.guillaume.desusanne.com/posts/fixing-redactions/)

### meeting

- classify and explain on doc upload
- n-gram
- visualizations on the side
  - most sensitive features on the side
  - overview of the entire document
    - (maybe Vscode style) to have overview of where to start working on document
    - "higher level information"
- explore document visualization literature rather than specific focus on redacting
  - "lit review"

## 11/12/2019

### Preparation Notes

- [I've prepared notes in LaTeX](https://gitlab.com/harpocrates-app/logbook/blob/f2fbd9d0d5a92c51b77726384e8f03596109008e/content/latex/document-visualization/document-visualization.tex)

### Meeting

- prediction explanation sidebar visualizations
  - see SHAP like visualizations
- document outline

## 20/12/2019

### Meeting

- paragraph level explanation feature density to score paragraphs
- Individual section labels
- bug: max explanation slider goes back to 10

## 21/01/2020

### Preparation Notes

- [see here](https://dissertation.guillaume.desusanne.com/posts/feature-density-shap2-other/)

### Meeting

- the elements of statistics learning (hastie) chap 9 10
  - for learning more about classifier algorithms
- Hover over paragraph shows explanations for paragraph classification

## 21/01/2020

### Preparation Notes

- [see here](https://dissertation.guillaume.desusanne.com/posts/paragraphs/)

### Meeting

- show in document classification on the right as opposed to the left
- also need to fix some bugs, cleanup branch and merge it
- GridSearch over bigger parameter space and **log results** for comparison
  - maybe over multiple classifiers?
  - jupyter notebook?

## 11/02/2020

### Preparation notes

- see [here](https://dissertation.guillaume.desusanne.com/posts/whats-next/)

### Meeting

- one hot encoder
- Downsample training data
- plan for evaluation

## 17/02/2020

### Preparation Notes

- see [here](https://dissertation.guillaume.desusanne.com/posts/one-hot-oversampling-and-evaluation/)
- unable to reproduce classifier from paper
  - do you have more details?
  - otherwise a classifier?
- evaluation metrics
  - timing, record clicks and questionnaire
- evaluation "subjects"
  - other students from Politics?
    - lots of subjects, "free"
    - not very qualified
  - Lecturers and Tutors from Politics?
    - fewer, probably less willing
  - When you conducted your user study, you asked University staff: who?
- which documents?
  - sensitive document collection? risky?
  - other collection, not as relevant?

### Meeting

- **dissertation outline by next week**

#### User study

- one where classifier is wrong/right
- which documents?
- which students?
- which instantiations of the system?
  - hide some interface components
  - order of document
  - choose number of explanations etc... (experimental setup)
- dependent variable
  - questionaires
    - **need to have draft by next week**
    - SUS System usability survey
    - chi square
    - ANOVA
  - timing
- how to evaluate ML explanations (article with "transparency" as keyword)

## 25/02/2020

### Preparation notes

- see [here for preparation notes](https://dissertation.guillaume.desusanne.com/posts/user-study-preparations/)
- also see [questionnaire for user study](https://docs.google.com/forms/d/1ZpeUlWykRoVqsDzYZ2s45o4u08EXxLr44hlthCFYwWk/edit)
- and [user study preparation notes](https://harpocrates-app.gitlab.io/notech/user_evaluation.md.pdf)

### Meeting

- 2 document sets 1 for each variation of the UI, randomly alternate between start with simplified version and full version
- run classifier with same 5 folds as Graham
- pandas filter to get given confusion matrix (document size, document actually sensitivity)

## 03/03/2020

### Preparation notes

- see [here](https://dissertation.guillaume.desusanne.com/posts/veryfing-classifier-user-study/)

### Meeting

#### User Evaluation

- look at the S27-in-confidence
- keep track of document order match with tester id

#### demo

- talkaloud
- script
  - e.g. redact dates in document
- show stripped down interface first
  - discuss web based interface for redacting document
  - design decisions
  - which libraries
- then full one
  - discuss ML classification and explanation
- more precise evaluation script (script as in cinema script)
- find document representative of task

#### Dissertation

Clearer Research question

## 04/03/2020 Special UI Feedback Meeting

- Good UI layout with respect to workflow
  - good separation of controls, content, aids
  - good use of vertical space
  - document is central and never hidden
  - paragraph level annotations on left are good "lead in" to the paragraph
  - although hard to control information density of document (zomming in/out breaks layout)
    - view documents side by side, or multiple pages?
    - leave controls and document in place but use rightmost column for dynamic content (other document, explanation visualization...)
- Explanation terms not very useful on demoed documents
  - relationship between terms are important, not just words
- Would be nice to be able to hide or remove explanations
- annotating text does not necessarily lead to redactions
  - cannot reflect that in current UI
- Experimenting with colors: why not, but be careful of color blindness
  - outline selection with a coloured "box" makes text more legible but what will be redacted becomes less obvious
- little information outside of document view (e.g. document set view)
  - preview some of the redactions of the document?
  - more details without entering the document view
- more targeted classifier might be more useful?
- VScode style minimap overview of document mabye not that useful because no time to learn document layout?
- How to preserve document structure? tables figures etc...
  - how to redact them?

## 10/03/2020

### Preparation

- see [here](https://dissertation.guillaume.desusanne.com/posts/more-user-study-preparations-feedback/)

### Meeting notes

- latex
  - can use other bibliographic style, try `citet` and `citep` natbib commands
  - latex figure options, investigate to reduce size
- change doc content before including it in dissertation (don't show identifiable pieces of text)
- literature review
  - use other sensivity review research
  - use ML explanations research
- presentation
  - ++ short presentation (take that into account)

## 17/03/2020

### Meeting notes

- User studies
  - describe reality
  - say ran 1 study, explain problems, and insights drawn from this
  - explain how I would have analysed the results
  - talk about demo meeting as professional panel test
- legal ediscovery different because can afford to skip docs
  - most comparable analogy is with "privileged" document (i.e. attornet-client privilege)
    -design
  - number the requiremnents to link back to them precisely
  - show openapi spec
    - mabye render the models?
  - diagram of entire systme
- implementation
  - show how documentation is generated
  - talk about source control CI and other software engineering
  - classifier design/performance > evaluation
  - implementation code snippets, what was difficult, how react helped frontend dev, show some screenshots
  - which components did I try out
- Design is higher level, implementation is "the code"
- Related products
  - whats wrong with adobe reader etc... "this is what nobody else does"
  - what do they all do number these and reference back?
  - number limitations of alternatives, to refernce back to them and requirements
- literature review
  - past tense
  - rest in present
- Presentation
  - slides following dissertation outline

## 31/03/2020

### Preparation Notes

- Snowden leak as background, is that OK?
- WHat should non functional requirements be? detail user study? but isnt that done in the user study section?
- Should I state null hypothesises ?
- Should I normalize document review time ?
  - length of document does not make sense?
  - normalize by complexity?
  - normalize by error rate?
- For T-test on review time: take average review time across documents for each user OR average review time for each document across interfaces

## Meeting notes

- Dissertation
  - Objective rather than Objectives
  - Lead in to chapters
  - explanations in machine learning introduce (too out of context right now)
  - fix citations years even for software
  - introduce and analyze figures "figure X shows that" rather than "we see blah as in Figure X"
  - tweak requirements (allowed to change them a bit)
  - diagram is implementation need new diagram for more general layout for design
  - resizebox table to shrink font
  - show api.getsensitivities code in frontend
  - classifier performance goes in "setup details" for evaluation "trying to find best classifier for user study"
    - mabye add a research question on best classifier to use?
  - what I discovered in the panel that I took over to the user study + other stuff I discovered
  - user study in past but analyse in present
  - illustrative textual example of classification and explanation
  - don't go in depth on Lime, only mention Lime how it works if it fits in the narrative
    - but do introduce the general concept
  - state null hypothesis explicitly
  - Clinton email introduction?
  - change Overview => outline
- Slides
  - one sentence summary of slide
  - reflect quantity of documents in slides
  - slides on related products
  - then lead into objectives
  - stack diagram before openapi examples
  - slide on evaluation
    - evaluation needs to answer requirements
