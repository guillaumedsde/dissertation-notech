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
- key points to bring up
  - unable to reproduce classifier from paper
    - do you have more details?
    - otherwise a classifier?
  - user study
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
