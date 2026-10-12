# MEETINGS LOGBOOK

## 12.10.26 (14:00–16:45)

**Minutes taker:** Alina

**Attendees:** Alina, Sven, Maxi, Christoph

#### Company Product change 

- Change topic from Coffee to beer
- Customer goes to a bar and can scan a QR Code where the website gets open and form can be filled
  - Form Fields per Beer (Dropdown Menu with Beers the Bar/Pub told us they sell), form block can be duplicated for reuse: choose a second beer to review
- Customer gets a Beer Voucher generated in a linked table between customer and pub/bar since only one voucher can be used per facility
- Change Database add a boolean if customer got their beer and if true, no e-mail will be received if free beer has already been received (if form is redundantly filled out and uploaded)
- Customer sends form -> database generates voucher -> generated Voucher get send to confirmation page (of sent form) instantly and generates a fitting QR Code (functioning as voucher)
  
 _**New Mission:**_

- We turn every beer drinker's opinion into insight for the on-trade, because great beer starts with honest feedback.

_**New Vision:**_

- Better beer, together.

#### Tools

- kanbanboard on github was created and filled with estimated tasks for the final formulated assignment document
  
#### Website

- needs Login, User Interface and Registr    _**New Mission:**_

  - We turn every beer drinker's opinion into insight for the on-trade, because great beer starts with honest feedback.

    _**New Vision:**_

    - Better beer, together.ation page
  - User Interface enables input and deletion of beer names for the drop down
  - Business Name, Password, business e-Mail (login), Location
    - one per company location if it is a chain

#### Diagramms

- creation of a use case diagram

#### Roles

##### _Clarification of Role Interfaces:_

- Sven: Overall
- Maxi: Frontent Rest-API specific

##### _New Role:_

- Project Security & Data Protection Officer: 



## 05.10.26 (14:00–16:00)

→ Conceptualisation of the Company Product and Company Goal

**Minutes taker:** Alina

**Attendees:** Alina, Sven, Maxi, Christoph

**Notes:**

- Two peer programmers for the database interface (DB, API)
- One person to design the database
    - Note: foreign key CompanyID
- One person each for building the frontend websites (Chart.js)
- Sven has created the GitHub project and Kanban board
- Project work will be managed via GitHub
- Product Owner: Alina Pollich
- Choice of process model: Agile
- Dev environment: based on Nix (flake.nix)
    - WSL for Windows

**Task allocation:**

- Database: Christoph
- Frontend websites: Alina
- Interfaces (2x): Maxi, Sven

**Technologies (non-binding):**

- Database: PostgreSQL
- Frontend websites:
    - HTML, (useEffect, useState), Next.js
    - Form page: –
    - Analysis page: Chart.js (?)
- Interfaces (2x):
    - –

**Company**

**Name:** CodeBrew

**Values:**

- **Fairness** – customers get something back, too
- **Trust & Honesty** – customer and seller data is never passed on
- **Collaboration** – working together with businesses
- **Improvement** – sellers can use statistics to improve their product range
- **Communication** – a link between customer and seller
- **Simplicity** – simple product, simple solution
- **(Customer Focus)**
- **Affordability** – 10 cents per completed form

**Mission:**

- We turn every coffee drinker's opinion into insight for roasters, because great coffee starts with honest feedback.

**Vision:**

- Better coffee, together.
---


## 04.10.2026

→ Brainstorming Company & Product specification

- **Minutes taker:** Alina
- **Attendees:** Alina, Sven
### Idea:

**Coffee Feedback Website**

- Companies can add their coffee varieties to the platform.
- Ten days after an order, the customer receives a link to a feedback form, so that the company can collect statistics externally.
    - The link is sent by the seller or supplier and points to our website.
- Includes: a form page with an interface to the DB, and a statistics page with an interface to the DB.
- The form content is defined by us (or stored in MongoDB).
- We notify the seller so that they can send the customer a $5 voucher.
    - Possibly a tick box to choose between a voucher and a free sample.