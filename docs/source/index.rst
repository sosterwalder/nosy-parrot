.. Nosy Parrot documentation master file, created by
   sphinx-quickstart on Fri Oct 13 14:22:40 2017.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=====================================
Nosy parrot - Surveys for the curious
=====================================

.. image:: favicon.ico

.. toctree::
   :maxdepth: 2
   :caption: Contents:

##################
Indices and tables
##################

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

************
Introduction
************

Parrots tend to be nosy (curious). Nosy parrot is a survey system
which enables users to create surveys and let other users complete surveys while
being user friendly.

************
Requirements
************

Project vision
==============

.. What shall be accomplished? Why is it valuable? Success criteria.

.. What

Nosy parrot provides users with an easy way to create and use surveys.
Each survey contains one or more questions which can be answered. Questions
can come in different types such as open questions, ratings or closed
questions.

.. Value

Nosy parrot is valuable due to its modularity and simplicity. The modularity
allows to create any kind of surveys which allows nosy parrot to be used in
any sector (e.g. the academic or health sector).

.. Success criteria.

Nosy parrot will be deployed in multiple stages with increasing measures of
success at each stage.

In the first stage, nosy parrot will be deployed as an internal
proof-of-concept and be used to rate internal events. It is successful if the
response of the users is positive.

In the second stage, nosy parrot will be made available for free use as a
beta version. It is successful if at least 1000 users use it on a regular
basis for real-world surveys within six months.

.. TODO: Paid version as stage?

Actors
======

From the above described vision the following actors are derived.

* Guests

  As the name indicates, guests are simple visitors of the page, that are not (yet)
  registered. Guests may access publicly available surveys or surveys they have
  got a link to.

* Users

  Guests that register themselves are users. Users manage their surveys (they
  create, edit and delete surveys). Users can also complete surveys.

  Users can share surveys. A survey can either be made public, then it is
  available to everyone including guests, or it can be shared with specific
  other users. This is done by generating a link per survey which makes
  the survey available to everyone in possession of this link.

* Administrators

  TBD.

Use Cases
=========

To ensure that the project's vision is reached, use cases are
defined. The use cases define the requirements of the project in form of text
stories.

.. TODO: Provide overview of use cases?

Use Case UC1: Create surveys
----------------------------

:Scope: Nosy parrot frontend and backend

:Level: User goal

:Primary actor: User

:Stakeholders and interests:
    * Guest: Likes to give feedback or information about a certain field.
    * User: Likes to have information of guests or other users about a certain field.
    * Administrator: -

:Preconditions: The user is authenticated.

:Post conditions: The survey is saved.

:Main success scenario:
    1. The user navigates to the page holding his surveys.
    2. The user chooses the button to add a new survey.
    3. The user inserts a title for the survey.
    4. The user builds the survey defining at least one question using the
       predefined elements to build questions.
    5. The user saves the survey.
    6. The survey appears in the list of the user's surveys.

:Extensions:
    a Cancelation of the creation of the survey.
        1. When the user is building the survey he clicks on the cancel
           button at the bottom of the mask.
        2. The survey is cancelled and not saved.
    b The database system is not available.
        1. When the user has finished building the survey the database system
           is not available anymore.
        2. A corresponding error message is shown, which asks the user to try
           saving the survey at a later time.
        3. The user tries to save the survey at a later time.
    c Incomplete details.
        1. The user does not fill in required details when creating a survey.
        2. A corresponding error message is shown, required fields are being
           marked as erroneous.
        3. The user fills out the required details and is then able to create
           the survey.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continous.

:Open issues: None.

Use Case UC2: Edit surveys
----------------------------

:Scope: Nosy parrot frontend and backend

:Level: User goal

:Primary actor: User

:Stakeholders and interests:
    * Guest: Likes to give feedback or information about a certain field.
    * User: Likes to have information of guests or other users about a certain field.
    * Administrator: -

:Preconditions: The user is authenticated and has at least one valid, saved
                survey.

:Post conditions: The survey is saved, the changes are adopted.

:Main success scenario:
    1. The user navigates to the page holding his surveys.
    2. The user chooses a survey he wants to edit.
    3. The user makes the changes he wants.
    4. The user saves the survey.
    5. The survey appears in the list of the user's surveys and the changes
       are adopted.

:Extensions:
    a Cancelation of the editing of the survey.
        1. When the user is editing the survey he clicks on the cancel
           button at the bottom of the mask.
        2. The made changes are not saved.
    b The database system is not available.
        1. When the user has finished editing the survey the database system
           is not available anymore.
        2. A corresponding error message is shown, which asks the user to try
           saving the survey at a later time.
        3. The user tries to save the survey at a later time.
    c Incomplete details.
        1. The user does not fill in required details when editing a survey.
        2. A corresponding error message is shown, required fields are being
           marked as erroneous.
        3. The user fills out the required details and is then able to create
           the survey.
    d Foreign survey.
        1. The user tries to access a foreign survey.
        2. A corresponding error message is shown.
        3. The user is redirected to his list of surveys.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continous.

:Open issues: None.

Use Case UC3: Delete surveys
----------------------------

:Scope: Nosy parrot frontend and backend

:Level: User goal

:Primary actor: User

:Stakeholders and interests:
    * Guest: Likes to fill out only relevant surveys.
    * User: Likes to remove obsolete surveys.
    * Administrator: None.

:Preconditions: The user is authenticated and has at least one valid, saved
                survey.

:Post conditions: The survey is deleted.

:Main success scenario:
    1. The user navigates to the page holding his surveys.
    2. The user deletes a survey.
    3. The survey disappears from the list of the user's surveys.

:Extensions:
    b The database system is not available.
        1. When the user has chosen to delete the survey the database system
           is not available anymore.
        2. A corresponding error message is shown, which asks the user to try
           saving the survey at a later time.
        3. The user tries to delete the survey at a later time.
    d Foreign survey.
        1. The user tries to delete a foreign survey.
        2. A corresponding error message is shown above the list of the
           user's surveys.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continous.

:Open issues: None.

Use Case UC4: Take surveys
--------------------------

:Scope: Nosy parrot frontend and backend

:Level: User goal

:Primary actor: Guests

:Stakeholders and interests:
    * Guest: Likes to give feedback or information about a certain field.
    * User: Likes to have information of guests or other users about a certain field.
    * Administrator: -

:Preconditions: There exist public surveys or the guest has received a link
                to a specific, non-public survey.

:Post conditions: The answers to the survey are saved, the guest is
                  identified by his IP address.

:Main success scenario:
    1. The guest opens a survey identified by an URL.
    2. The guest fills out the details of the survey.
    3. The guest saves his answers.
    4. The guest gets a message that his answers were saved.
    5. The creator of the survey (a user) gets notified about the answers.

:Extensions:
    a Cancelation of the answering of the survey.
        1. When the guest is answering the survey he closes the survey.
        2. The given answers are not saved.
    b The database system is not available.
        1. When the guest has finished answering the survey the database system
           is not available anymore.
        2. A corresponding error message is shown, which asks the guest to try
           saving the survey at a later time.
        3. The guest tries to save the survey at a later time.
    c Incomplete details.
        1. The guest does not fill in answers to required questions when
           taking the survey.
        2. A corresponding error message is shown, required fields are being
           marked as erroneous.
        3. The guest fills out the required details and is then able to save
           his answers.
    d Non-public survey without generated link.
        1. The guest tries to access a survey which is not public and whose
           owner has not created a link to share the survey.
        2. A corresponding error message is shown.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continous.

:Open issues: None.

Use Case UC5: Evaluate surveys
------------------------------

:Scope: Nosy parrot frontend and backend

:Level: User goal

:Primary actor: Users

:Stakeholders and interests:
    * Guest: -
    * User: Likes to have information of guests or other users about a certain field.
    * Administrator: -

:Preconditions: TBD

:Post conditions: TBD

:Main success scenario: TBD

:Extensions: TBD

:Special requirements: TBD

:Technology and data variations list: TBD

:Frequency of occurrence: Could be nearly continous.

:Open issues: None.

Additional requirements
=======================

TBD.

************
Domain model
************

The domain model shows the essential concepts and objects of the domain.

.. image:: domainModel.png