# Meetings summary

## 25/09/2019

### Meeting

* don't post sensitive information especially since working with classified documents
* Compare different text classification methods
* write user stories for the final product
  * with inspiration from other similar products such as redactify
* will be working in sprints with some form of sprint planning
* ideas regarding final product and tech stack
* Craig and Graham have a swagger specification for an API format already drafted
* Communication over Slack channel

## 02/10/2019

### Preparation notes

* Used scikit-learn and 20 newsgroup dataset to build text catergorization program using *bag of words* approach
  * built pipeline, text pre-processing,
  * I used different clasifier algorithms, I don't know how any of them work
  * I don't have a performance measure for these classifier algorithms
    * sci-kit learn has some benchmarking tests
    * but might perform differently depending on data and categories
  * taking a 2 categories approach, sensitive, non sensitive (is this correct?)
* Using Lime explainer for text categorization
  * Lime will highlight what **makes** a document sensitive, not what **is sensitive** within the document?
    * so Lime is only a indicator of trust? Even then, the ML model might have noticed patterns in sensitive documents that might not seem obvious
* spaCy framework seems quite widely Used
  * entity extraction works ok
  * have not looked much at other features
* Potential difficulty: extracting text from document, processing it, and highlighting words in original document in order to keep structure
  * might have to restrict scope to PDFs only (and mabye raw text) in order to avoid having to find a way to render many different file types
