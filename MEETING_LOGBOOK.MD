# MEETINGS LOGBOOK

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