# ANGEL MORA

**Senior Ruby on Rails Developer**

Mexico City, Mexico | angelmomaa@gmail.com
[LinkedIn](https://linkedin.com/in/angelmoradev) | [GitHub](https://github.com/angel-mora)

---

## PROFILE

Software Engineer with 6+ years of professional experience specializing in Ruby on Rails full-stack development. Deep expertise building scalable web applications across SaaS platforms, enterprise systems, and GIS solutions following MVC architecture and object-oriented programming principles. Strong track record in performance optimization, test automation, and agile development. Currently building an AI-augmented content platform with a 15-agent orchestration system on Rails 8.

---

## PROFESSIONAL EXPERIENCE

### Founder & Senior Rails Developer
**[Speculative Technologies](https://speculative-technologies.com)** | Mexico City (Remote) | Jul 2025 - Present

**[Solopreneur]** Speculative Technologies is a knowledge management and publishing platform that transforms Obsidian vaults into monetizable websites with newsletters, semantic search, and AI-powered content curation. Built as a Rails 8 application with a 15-agent AI orchestration system that processes 10,000+ documents through a 7-phase content pipeline (ingest, research, organize, synthesize, curate, publish, connect). The platform combines traditional Rails engineering with LLM integration for autonomous content workflows.

**Key Achievements:**
- Architected a 15-agent AI orchestration system with 8 on-demand skills using Claude (Opus/Sonnet/Haiku), coordinating autonomous content processing across 7 pipeline phases
- Processed 8,032 bookmarks and 1,762 conversations into structured knowledge base using custom Ruby ETL scripts, reducing content curation time from days to hours
- Designed cost-optimized multi-model LLM strategy combining Claude, Ollama (local Qwen 3 14B), and NanoGPT, reducing AI infrastructure costs by 92% ($510/mo to $38/mo)
- Built spec-driven development workflow with agent quality assessment framework (7-dimension scoring, 417-line evaluation prompt) for auditing agent ecosystems across projects
- Implemented mobile-to-VPS autonomous agent workflow via GitHub Actions, enabling AI task execution from Android/Termux without dedicated server infrastructure
- Created custom design system (603 lines CSS) with typography optimization (Newsreader variable font, optical sizing) and dark/light theme support

**Stack:** Ruby, Rails 8, Hotwire (Turbo, Stimulus), PostgreSQL 16, pgvector, Solid Queue/Cache/Cable, Kamal 2, Cloudflare R2, Claude API, Ollama, Quartz 4, Git

---

### Senior Ruby on Rails Developer
**[Inktavo](https://www.inktavo.com/) (Printavo)** | Chicago, IL, USA (Remote) | Sep 2024 - Jul 2025

**[Monolith]** Inktavo is the industry-leading SaaS provider for the branded merchandise and decorated apparel industry. Worked on Printavo, their flagship shop management platform serving thousands of print shops across North America. Contributed to feature development using Rails 6/7 with Hotwire and ViewComponent, maintained multi-provider payment architecture (Stripe, Payrix, PayPal), managed Pundit authorization policies, and led the Rails 7 migration initiative within an agile development team using SCRUM.

**Key Achievements:**
- Reduced initial page load by 68% (2.5s to 0.8s) and database queries by 74% (47 to 12) by implementing Turbo Frames lazy loading for order dashboard tabs with Pundit authorization preserved in each partial (PT-1645)
- Accelerated Rails 7 migration by leading 10 stories across 6 sprints, establishing migration patterns adopted by 8-person team and resolving gem compatibility issues
- Championed code quality initiative by refactoring 100+ files to Rubocop standards across 32+ PRs, configuring Pronto for automated PR linting and haml-lint for template validation
- Managed Flipper feature flag lifecycle (creation, beta rollout, monitoring, cleanup) for billing, receiving, and email domain verification features across production deployments
- Maintained multi-provider payment testing with VCR cassettes for Stripe, debugged Capybara iframe interactions for Payrix embedded payments, and cleaned up legacy tax collection specs (PT-1778)
- Integrated QuickBooks Online API for automated accounting synchronization and developed reusable UI elements using ViewComponent for the shop management dashboard

**Stack:** Ruby, Rails 6/7, Hotwire (Turbo, Stimulus), ViewComponent, Pundit, Flipper, Tailwind, HAML, MySQL, PostgreSQL, Redis, Sidekiq, Stripe, Payrix, VCR, Capybara, CircleCI, Heroku, NewRelic, HoneyBadger

---

### Senior Ruby on Rails Developer
**[Info-Tech Research Group](https://www.infotech.com/)** | London, Ontario, Canada (Remote) | Dec 2021 - Sep 2024

**[Monolith]** Info-Tech Research Group is an enterprise IT research and advisory company. Contributed across 9 products: SoftwareReviews, Provider Portal (built from scratch), Info-Tech CMS, MyPolicies, Pelican, Feedback, Kestrel, Advisory Portal (Warthog), and DDR Reports. Focused on performance optimization, CanCanCan/Pundit authorization, paper_trail audit trails, SAML SSO implementation, Sidekiq reliability, and team collaboration through code reviews and technical presentations.

**Key Achievements:**
- Eliminated N+1 queries by refactoring `attach_parent_offerings` and `duplicate_parent_scores_by_review` using `group_by`/`index_by` hash lookups and `activerecord-import` for bulk operations, reducing feature lookups from O(n) to O(1) (SR-10595)
- Implemented CanCanCan authorization for offering access control based on license status, writing RSpec tests for abilities and auditing authorization patterns across 5 applications (SR-9197)
- Built paper_trail audit system for Warthog, using custom `paper_trail_event` strings within ActiveRecord transactions for tracking review migrations between offering categories with Rollbar error reporting
- Stabilized background jobs by diagnosing Sidekiq hanging issues and implementing `super_fetch!`, `reliable_scheduler!`, `transactional_push!` with systemd watchdog monitoring
- Enabled real-time feedback by building Pusher WebSocket progress reporting for LargeCategoryCreationJob handling 10,000+ record migrations with comprehensive error handling
- Implemented SAML SSO across MyPolicies, Feedback, Pelican, and Kestrel using Microsoft Entra and Okta, with SCIM group provisioning and role-based access per application
- Built Learning Content Library with complex query objects (Selleo `Patterns::Query`), Turbo Frames filter UI, and 371 lines of Capybara feature specs covering mobile responsive, filter combinations, and pagination (MCWEB-1638)
- Worked with anonymized development databases refreshed daily from production, debugging failed Sidekiq jobs using paper_trail version history as part of support rotation
- Reduced test suite from 45 to 38 minutes by profiling with TestProf/FactoryBot to identify factory cascades, and delivered Bullet gem presentation to team for N+1 detection adoption

**Stack:** Ruby, Rails 5/6, PostgreSQL, MySQL, Redis, Sidekiq, CanCanCan, Pundit, paper_trail, acts_as_tenant, Pusher, Elasticsearch, jQuery, Stimulus, ViewComponent, Capybara, RSpec, FactoryBot, Semaphore CI, GitHub Actions, Heroku, Capistrano, Rollbar, Skylight

---

### Senior Ruby on Rails Developer
**[Aleph](https://alephri.com)** | Mexico (Remote) | Oct 2021 - Dec 2021

**[Microservices]** Aleph is a real-time logistics tracking platform for fleet management across Latin America. Joined during migration from Rails monolith to pure Ruby microservices on AWS serverless. Built GraphQL/REST integrations across 7 microservices (tracking, users, fleet, directory, shout, conversations, locations), automated infrastructure deployment with SAM/CloudFormation, and implemented PostGIS scripts for geographic data processing. All Lambda functions required 512MB memory and <500ms response times.

**Key Achievements:**
- Built 5 GraphQL/REST integrations between AWS AppSync, API Gateway, and Lambda using adapter pattern to decouple core logic from transport layer
- Automated infrastructure deployment with SAM templates and CloudFormation across 3 environments (dev, staging, production) with Aurora PostgreSQL Serverless (auto-pause, KMS encryption)
- Expanded to 2 new markets (Brazil, Colombia) by implementing PostGIS scripts to clean, validate, and seed geographic data from INEGI sources using QGIS and Elasticsearch for geojson storage
- Contributed to fleet tracking invitation flow: GraphQL -> Lambda -> service layer -> mobile push notification pipeline with JWT authentication

**Stack:** Ruby, React, AWS (Lambda, AppSync, API Gateway, Aurora PostgreSQL, CloudFormation, SAM, CloudWatch, Secrets Manager), PostGIS, GraphQL, Elasticsearch, Docker

---

### Intermediate Ruby on Rails Developer / Intelligence Analyst
**[SEPROBAN](https://www.seproban.com)** | Mexico City, Mexico | Oct 2019 - Sep 2021

**[Monolith + REST API]** SEPROBAN is Mexico's banking security company serving all major financial institutions. Worked in the Special Investigations and Risk Analysis Unit, building the Centro de Inteligencia Bancaria (CIB) -- a strategic intelligence center. Built the core Rails application with a versioned REST API (namespace-based: api/v1, api/v2) serving a React-based Kepler.gl mapping frontend, processing ~200K georeferenced crime incidents. Combined server-side rendering with API endpoints for the React client.

**Key Achievements:**
- Saved 120+ hours/month by creating 30+ rake tasks to automate coordinate processing, timestamp normalization, and polygon validation for crime data using activerecord-import for bulk insertion
- Built interactive crime maps with Leaflet.js and Kepler.gl (React) visualizing ~200K georeferenced incidents with clustering, choropleth layers, and timeline-based visualization
- Centralized intelligence workflows by building Rails monolith that transformed MS Access, DBF, Excel, and CSV data into unified analysis platform with Chartkick for automated business reports
- Led geospatial analysis for 3 analysts, training team on Kepler.gl visualization and establishing data processing standards; produced R/RMarkdown statistical reports for executive decision-making

**Stack:** Ruby on Rails, PostgreSQL, PostGIS, JavaScript, Leaflet.js, Kepler.gl (React), Chartkick, ActiveRecord Import, Devise, Docker, Azure DevOps, Heroku, R/RMarkdown

---

### Freelance Ruby on Rails Developer | 2019 - 2021

**Academia de Empresarios (2020-2021):** Led team of 5 developers and 2 designers to create equity crowdfunding MVP for Hispanic/Latinamerican SME investment. Delivered MVP in ~4 months by designing data model ERD and coordinating 24 SCRUM rituals following agile methodologies. Integrated Stripe API for payment processing with webhook callbacks. *Stack: Rails, PostgreSQL, React, Stripe, Docker, GitHub Actions, AWS S3*

**Baos Life (2019-2020):** Led 3 developers to translate Excel business requirements into production Rails application. Launched subscription platform in single quarter with Stripe Connect for recurring payments across multiple subscription tiers. Dockerized development environment with ngrok for webhook testing and established CI/CD pipeline with GitHub Actions. *Stack: Rails, PostgreSQL, React, Docker, Stripe Connect, Devise, GitHub Actions*

---

## TECHNICAL SKILLS

**Languages:** Ruby, JavaScript (ES6+, jQuery, Stimulus, React), SQL, HTML/CSS, Python (scripting)

**Backend:** Rails 5/6/7/8, Hotwire (Turbo, Stimulus), ViewComponent, Sidekiq, ActiveJob, GraphQL, Solid Queue/Cache/Cable

**Authorization & Audit:** CanCanCan, Pundit, paper_trail, Flipper (feature flags), Devise, SAML SSO

**Databases:** PostgreSQL (pgvector), PostGIS, MySQL, Redis, Elasticsearch

**Frontend:** Stimulus, jQuery, React (Kepler.gl), Tailwind, Bootstrap, HAML, Turbo Frames/Streams

**Testing:** RSpec, FactoryBot, Capybara, VCR, TestProf, Bullet, SimpleCov

**DevOps:** Heroku, Docker, Kamal 2, AWS (Lambda, AppSync, API Gateway, Aurora, S3, CloudFormation), CI/CD (GitHub Actions, CircleCI, Semaphore), Capistrano

**AI/LLM:** Claude API (Opus/Sonnet/Haiku), Ollama (local models), agent orchestration, RAG (pgvector), prompt engineering

**GIS:** PostGIS, Leaflet.js, Kepler.gl, QGIS, map clustering, choropleth visualization

**Practices:** Agile development (SCRUM), team collaboration, MVC architecture, object-oriented programming, server-side rendering, spec-driven development

---

## EDUCATION

**Maestria en Ciencias Computacionales y Telecomunicaciones** (Expected 2026) - Universidad Tecnologica Latinoamericana en Linea (UTEL) | 2025 - Present | GPA: 9.4/10

**CompTIA Security+ Prep** - edX/ITESM | 2023

**Licenciatura en Filosofia** - Universidad Nacional Autonoma de Mexico (UNAM), Facultad de Filosofia y Letras | 2014-2017; Graduated 2022 | Cedula: 13166504 | GPA: 9.58

**Full Stack Developer** - Microverse | 2020-2021 | Rails, React, <4% acceptance rate

---

## CERTIFICATIONS

**OWASP Top 10** | 2023

**Kevin Mitnick Security Awareness** - KnowBe4 | 2022

**Microverse Fullstack Certification** | 2021

**Programa Liderazgos Progresistas** - Friedrich Ebert Stiftung | 2018

---

## LANGUAGES

Spanish (Native) | English (Full Professional) | French (B1)
