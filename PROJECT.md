---
---

## mysecondbrain

**Repo:** `angelmora.work` (root)
**Stack:** Rails 8 + TailwindCSS + Hotwire + ViewComponent + Devise
**Estado:** Beta personal — second brain con paywall

---

```kanban
## Backlog

- [ ] Extraer lógica de `archive/scripts/generate_cv.rb` a un servicio Rails `CvGeneratorService`
- [ ] Migrar estilos de `archive/sources/cv_styles.css` a TailwindCSS components para el CV dinámico
- [ ] Crear modelo `CvEntry` (company, title, start_date, end_date, description, logo) para reemplazar datos hardcodeados en `ResumeComponent`
- [ ] Crear modelo `Article` (title, slug, body, description, date, published) para reemplazar datos hardcodeados en `ArticlesController`
- [ ] Crear modelo `Project` (name, description, link, logo_initial) para reemplazar datos hardcodeados en `ProjectsController`
- [ ] Integrar Quartz como subdirectorio o iframe con auth — conectar `QUARTZ_URL` con ObsidianVault real
- [ ] Endpoint `/cv` que genera HTML del CV con los estilos de `archive/sources/cv_styles.css` y datos de la DB
- [ ] Endpoint `/cv.pdf` que usa `CvGeneratorService` para generar PDF dinámico (Prawn o Grover)
- [ ] Admin básico para CRUD de Articles, Projects, CvEntries (puede ser ActiveAdmin o admin namespace custom)
- [ ] Reemplazar newsletter form con integration real (Mailchimp API o similar)
- [ ] Migrar `angel_mora_master_cv.md` (si existe en ObsidianVault) como source de verdad para el CV
- [ ] Tests para ViewComponents (CardComponent, ContainerComponent, etc.)

## In Progress

- [ ] Diseñar schema de `CvEntry` basado en campos de `archive/CV.md` y `archive/angel_mora_unosquare_OLD.md`

## Done

- [x] Rails app creada con TailwindCSS + ViewComponent + Devise
- [x] UI replicada del Next.js Tailwind UI come template
- [x] Dark mode toggle funcional (Stimulus)
- [x] Quartz iframe embed en `/vault`
- [x] Auth con Devise (sign up / log in / log out)
-- [x] Vault protegido con `authenticate_user!`
- [x] CV PDF servido desde `public/angel_mora_cv.pdf`
- [x] Fuentes de producción integradas (Space Grotesk, Inter, JetBrains Mono)
- [x] Archive restaurado con scripts, estilos y markdowns útiles
- [x] App movida a raíz del repo (no nested en mysecondbrain/)
```