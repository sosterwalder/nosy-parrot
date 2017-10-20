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

+--------------------+
| Use cases overview |
+====================+
| :ref:`uc1`         |
+--------------------+
| :ref:`uc2`         |
+--------------------+
| :ref:`uc3`         |
+--------------------+
| :ref:`uc4`         |
+--------------------+
| :ref:`uc5`         |
+--------------------+
| :ref:`uc6`         |
+--------------------+

.. _uc1:
Use Case UC1: Create surveys
----------------------------

:Scope: Nosy parrot application

:Level: User goal

:Primary actor: User

:Stakeholders and interests:
    * Gust: Likes to give feedback or information about a certain field/topic.
    * User: Likes to have information of guests or other users about a certain field/topic.
    * Administrator: -

:Preconditions: The user is authenticated.

:Post conditions: The survey is saved and appears in the list of the user's
                  surveys.

:Main success scenario:
    1. The user chooses to add a new survey.
    2. The user provides a title for the survey.
    3. The user builds the survey defining at least one question using
       predefined elements.
    4. The user saves the survey.
    5. The survey appears in the list of the user's surveys.

:Extensions:
    a Cancellation of the creation of the survey.
        1. When the user is building the survey he does not save the survey.
        2. The survey is cancelled and not saved.
    b One or more drivers are not available.
        1. When the user has finished building the survey one or more of the
           drivers are not available anymore.
        2. A corresponding error message is returned, which asks the user to try
           saving the survey at a later time.
        3. The user tries to save the survey at a later time.
    c Incomplete details.
        1. The user does not fill in required details when creating a survey.
        2. A corresponding error message is returned including the required
           but missing fields.
        3. The user fills out the required details and is then able to create
           the survey.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

.. _uc2:

Use Case UC2: Edit surveys
----------------------------

:Scope: Nosy parrot application

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
    1. The user chooses a survey he wants to edit.
    3. The user makes the changes he wants.
    4. The user saves the survey.
    5. The survey appears in the list of the user's surveys and the changes
       are adopted.

:Extensions:
    a Cancellation of the editing of the survey.
        1. When the user is editing the survey he does not save the survey.
        2. The changes are not saved.
    b One or more drivers are not available.
        1. When the user has finished editing the survey one or more of the
           drivers is not available anymore.
        2. A corresponding error message is returned, which asks the user to
           try saving the survey at a later time.
        3. The user tries to save the survey at a later time.
    c Incomplete details.
        1. The user does not fill in required details when editing a survey.
        2. A corresponding error message is returned, which asks the user to
           try saving the survey at a later time.
        3. The user fills out the required details and is then able to save
           the survey.
    d Foreign survey.
        1. The user tries to access a foreign survey.
        2. A corresponding error message is returned.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

.. _uc3:

Use Case UC3: Delete surveys
----------------------------

:Scope: Nosy parrot application

:Level: User goal

:Primary actor: User

:Stakeholders and interests:
    * Guest: Likes to fill out only relevant surveys.
    * User: Likes to remove obsolete surveys.
    * Administrator: None.

:Preconditions: The user is authenticated and has at least one valid, saved
                survey.

:Post conditions: The survey is deleted and does not appear in the user's
                  surveys anymore.

:Main success scenario:
    1. The user requests his surveys.
    2. The user deletes a survey from his surveys.
    3. The survey disappears from the list of the user's surveys.

:Extensions:
    a One or more drivers are not available.
        1. When the user has tries to delete the survey one or more of the
           drivers is not available anymore.
        2. A corresponding error message is returned, which asks the user to try
           deleting the survey at a later time.
        3. The user tries to delete the survey at a later time.
    b Foreign survey.
        1. The user tries to access a foreign survey.
        2. A corresponding error message is returned.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

.. _uc4:

Use Case UC4: Take surveys
--------------------------

:Scope: Nosy parrot application

:Level: User goal

:Primary actor: Guests

:Stakeholders and interests:
    * Guest: Likes to give feedback or information about a certain field/topic.
    * User: Likes to have information of guests or other users about a certain
            field/topic.
    * Administrator: -

:Preconditions: There exist public surveys or the guest has received the
                details to access a specific, non-public survey.

:Post conditions: The answers to the survey are saved, the guest is
                  identified.

:Main success scenario:
    1. The guest opens a survey he has access to.
    2. The guest fills out the details of the survey.
    3. The guest submits his answers.
    4. The guest receives a message that his answers were submitted.
    5. The creator of the survey (a user) gets notified about the answers.

:Extensions:
    a Cancellation of the answering of the survey.
        1. When the guest is answering the survey he does not submit his
           answers.
        2. The given answers are not saved.
    b One or more drivers are not available.
        1. When the guest has finished answering the survey one or more
           drivers are not available anymore.
        2. A corresponding error message is returned, which asks the guest to
           try submitting his answers at a later time.
        3. The guest tries to submit his answers at a later time.
    c Incomplete details.
        1. The guest does not fill in answers to required questions when
           taking the survey.
        2. A corresponding error message is returned including the required
           but missing fields.
        3. The guest fills out the required details and is then able to
           submit his answers.
    d Non-public survey without a access details.
        1. The guest tries to access a survey which is not public and whose
           owner has not shared the survey.
        2. A corresponding error message is returned.

:Special requirements: None

:Technology and data variations list: None

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

.. _uc5:

Use Case UC5: Evaluate surveys
------------------------------

:Scope: Nosy parrot application

:Level: User goal

:Primary actor: Users

:Stakeholders and interests:
    * Guest: -
    * User: Likes to have information of guests or other users about a certain
            field/topic.
    * Administrator: -

:Preconditions: TBD

:Post conditions: TBD

:Main success scenario: TBD

:Extensions: TBD

:Special requirements: TBD

:Technology and data variations list: TBD

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

.. _uc6:

Use Case UC6: Register as user
------------------------------

:Scope: Nosy parrot application

:Level: User goal

:Primary actor: Guests

:Stakeholders and interests:
    * Guest: Would like to be able to create and evaluate surveys.
    * User: -
    * Administrator: -

:Preconditions: There is no user registered with the exact same details as
                the guest.

:Post conditions: The guest is registered as a user and is able to
                  authenticate himself as such.

:Main success scenario:
    1. The guest fills out the registration form.
    2. The guest receives an answer about his registration.

:Extensions:
    a Cancellation of the registration.
        1. While the guest is registering himself he suddenly cancels the
           registration.
        2. The guest is not registered as a user.
    b One or more drivers are not available.
        1. When the user has finished registering one or more of the
           drivers are not available anymore.
        2. A corresponding error message is returned, which asks the guest to
           try registering himself at a later time.
        3. The guest tries to submit the registration at a later time.
    c Incomplete details.
        1. The guest does not fill in all required details when registering
           himself as a user.
        2. A corresponding error message is returned including the required
           but missing fields.
        3. The guest fills out the required details and is then able to
           register himself as a user.

:Special requirements: TBD

:Technology and data variations list: TBD

:Frequency of occurrence: Could be nearly continuous.

:Open issues: None.

Additional requirements
=======================

TBD.

************
Domain model
************

The domain model shows the essential concepts and objects of the domain.

.. image:: domainModel.png