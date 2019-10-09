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

### Preperation notes

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
