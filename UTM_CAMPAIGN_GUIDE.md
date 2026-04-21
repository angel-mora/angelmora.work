# Guía de Campañas UTM para Búsqueda de Empleo

Esta guía explica cómo estructurar tus enlaces UTM para rastrear efectivamente de dónde vienen las mejores oportunidades y visitas a tu CV en `angelmora.work`.

## ¿Qué son los UTMs y por qué importan?
Los parámetros UTM son etiquetas que le agregas a un enlace para decirle a Plausible o PostHog exactamente **quién, de dónde y por qué** están visitando tu sitio. Tu enlace base es `https://angelmora.work`.

## Estructura de Parámetros

Usa siempre esta estructura básica:
`https://angelmora.work/?utm_source=[FUENTE]&utm_medium=[MEDIO]&utm_campaign=[CAMPAÑA]`

*   **`utm_source` (Fuente):** ¿En qué plataforma o sitio web pusiste el enlace? (Ej. `linkedin`, `whatsapp`, `fiverr`, `upwork`, `tribu`, `microverse`).
*   **`utm_medium` (Medio):** ¿Qué formato tiene el enlace? (Ej. `bio`, `direct_message`, `post`, `slack_group`, `whatsapp_group`).
*   **`utm_campaign` (Campaña):** ¿Cuál es el objetivo o el contexto específico? (Ej. `senior_rails`, `freelance_gig`, `networking`).

---

## Enlaces Generados para tus Plataformas y Comunidades

Aquí tienes la lista lista para copiar y pegar según el caso de uso:

### 1. Perfil y Contenido en LinkedIn
Para poner en tu sección de "Información de contacto" o "Destacado":
> `https://angelmora.work/?utm_source=linkedin&utm_medium=bio&utm_campaign=senior_rails`

Para cuando hagas un post (ej. hablando de Hotwire o tu proyecto):
> `https://angelmora.work/?utm_source=linkedin&utm_medium=post&utm_campaign=content_marketing`

### 2. Mensajes Directos a Reclutadores (Outreach)
Para correos o DMs en LinkedIn a reclutadores (sustituye `[empresa]` por el nombre de la vacante, ej. `unosquare`):
> `https://angelmora.work/?utm_source=[empresa]&utm_medium=direct_message&utm_campaign=outbound_recruiting`

### 3. Comunidades de Slack / Discord (El mercado oculto)
Si compartes tu CV en los canales de `#jobs` o `#hiring`:
*   **Comunidad Tribu:**
    > `https://angelmora.work/?utm_source=tribu&utm_medium=slack_group&utm_campaign=community_networking`
*   **Comunidad Microverse:**
    > `https://angelmora.work/?utm_source=microverse&utm_medium=slack_group&utm_campaign=alumni_network`
*   **Comunidad ITAM / Universidad:**
    > `https://angelmora.work/?utm_source=itam&utm_medium=whatsapp_group&utm_campaign=alumni_network`
*   **Comunidad Wiki / Open Source:**
    > `https://angelmora.work/?utm_source=wiki&utm_medium=discord_group&utm_campaign=open_source_network`

### 4. Plataformas de Freelance
Para ponerlo en tu perfil o mandarlo por mensaje a clientes potenciales:
*   **Fiverr:**
    > `https://angelmora.work/?utm_source=fiverr&utm_medium=profile&utm_campaign=freelance_leads`
*   **Upwork:**
    > `https://angelmora.work/?utm_source=upwork&utm_medium=proposal&utm_campaign=freelance_leads`

### 5. Contactos Personales (WhatsApp)
Para cuando un amigo o ex-compañero te diga "pásame tu CV":
> `https://angelmora.work/?utm_source=referral&utm_medium=whatsapp&utm_campaign=personal_network`

---

## ¿Cómo ver los resultados?
Entra a tu panel de Plausible o Hotjar/PostHog. En la sección inferior verás un apartado de **"Top Sources"** y **"Top Campaigns"**. 
Si ves que `utm_source=tribu` te trae 50 visitas y 10 de ellas dan clic en tu GitHub (lo verás en "Outbound Links"), sabrás que esa comunidad es mucho más valiosa que mandar mensajes en frío por LinkedIn.