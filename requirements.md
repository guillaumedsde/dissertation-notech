# Application Requirements

## Purpose of the application

I am looking to build a **web application** that improves the experience of **redacting sensitive documents**. In addition to **highlight to redact** features, I want this application to learn from the document redaction process in order to **suggest a sensitivity classification** and potentially **suggest pre-redacttions** of sensitive elements within the document.

## Development

I forsee a couple _key stages_ in the development process for such an application:

- Build **Machine Learning model** for senstive document clasification and "pre-redactions"
- Connect this model to an **API** with a precise **specification**
- build **frontend** for this API
- Implement **learning** from the document redactions

## User stories and features

_Some of these are taken from [my previous work](https://dissertation.guillaume.desusanne.com/posts/classifier-discoveries-product-reflections/) on user stories for this application_

Here is a list of user stories for the application, I have extracted key features from the stories in bullet points below them.

- As a redactor I want my file uploaded for redaction to be pre-processed and displayed with **redaction hints** so that I can redact documents faster
  - file upload
  - text extraction
  - Machine Learning model for sensitivity classification
- As a redactor, I would like to **understand the reasons for the sensitivity classfication** suggestions so that I can decide on their relevance
  - Machine learning model explainer
- As a redactor, I would like the suggested redactions to **improve as I redact documents**
  - Learning loopback from user redactions to model
- As a redactor, I expect some of my redactions to be **reflected across an entire document** so that I don't have to go over them again
  - redaction assistance
- As a redactor, I would like to redact on my MacOS, Windows or Linux based computer so that I don't have to worry about the device I am using
  - web application
- As a redactor, I want to add and remove redactions so that I can go back and **edit** my work.
  - save state of current document
- As a redactor, I want the files I redact to **not be retained as a whole** so that I can keep them confidential
  - train model but discard document
- As a developer I want to standardize API calls so that others can easily built upon or improve the final application
  - API specification

## MoSCoW

### Must have

- document Set creation and deletion
- within a set, plaintext document creation and deletion
- for a document, binary sensitivity classification (sensitive or not?)
- explanation for aforementioned classifications
- user binary classification of a document (sensitive or not?)
- for a set of document, overall sensitivity statistics (number of sensitive documents etc...)
- for a set of documents, ordered of documents by sensitivity
- User redactions of a document with text highlighting, with possible edits and save functionality
- final redacted document exporting
- documentation for API

### Should have

- user redactions helper (highlight all instances of redacted text, could do this on a document set level)
- for a document, suggest redaction of sensitive elements
- deployment of web application beyond development environment (HTTPS, production web server, firewall etc...)
- fulltext document search (what for?)
- clearly specified and enforced document upload limitations (number of documents _and_ document size)

### Could have

- reviewer authentication (what for? access control to documents?)
- extract entities from document and display them (spaCy)
- possibility of using different text Classifiers (what for?)
- documentation for API SDK
- documentation for frontend

### Would have

- handle more than plain text files (PDF, Word etc...)
- "Loopback Learning": user interactions help improve future predictions
