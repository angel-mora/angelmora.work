# frozen_string_literal: true

class ArticlesController < ApplicationController
  ARTICLES_EN = [
    {
      title: "Knowledge Base Networking",
      slug: "knowledge-base-networking",
      description: "About the missing features for a new era of Social Networks for nerds.",
      date: "2023-10-10",
      image: "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>I started my journey as a developer motivated by my desire to have the possibility of managing all my pdf, presentations and websites coming from a single source of truth. I initially got in love with Pandoc and Ruby Jekyll. As time went through, started using OrgMode and later Obsidian.</p>
        <p>I found that to be the great resource available to do what OrgMode only dreamed of: having all your life and projects managed over plain-text.</p>
        <h2>Text-based queries</h2>
        <p>Recent advances in markdown creation and rendering set MDX as the most viable option for writing awesome content. At the same time, the principles that run Obsidian and Logseq opened up a bunch of possibilities for writing in a structured way.</p>
        <p>Who would have thought that by simply setting a standard pattern to log your time would suffice to get metrics about your productivity? That's what Knowledge Base plugins brought to the table.</p>
        <h2>Interoperability at the core of Knowledge Base Management</h2>
        <p>Old ideas that founded open source communities have finally wrapped up in these kinds of software. The SSR era brings the right amount of interoperability to make it possible: markdown with frontmatter as plain text, configured content, and a server that builds it.</p>
        <p>In Ruby on Rails, <code>view_components</code> and Hotwire have made this possible.</p>
        <p>However, we are still missing a few social features for those inner-life second brains: collaboration, notifications, sharing, search, and tags that understand the knowledge graph.</p>
      HTML
    },
    {
      title: "The Importance of Geographic Data in Contemporary Research",
      slug: "the-importance-of-geographic-data-in-contemporary-research",
      description: "What Geographic Information Systems (GIS) means for the future of Public Policy and how we can get there.",
      date: "2022-09-17",
      image: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>Geographic data is not just a map. It is a way to represent territory, infrastructure, risk, inequality, and public decisions with enough precision to make better interventions.</p>
        <p>When a public problem has coordinates, distance, density, and movement, policy can stop speaking in abstractions and start dealing with the material conditions of a place.</p>
        <h2>GIS as public infrastructure</h2>
        <p>Geographic Information Systems connect databases, geometry, visualization, and analysis. They let researchers ask where something happens, how it relates to other events, and what pattern emerges over time.</p>
        <h2>Why it matters</h2>
        <p>The future of public policy needs tools that are precise and readable. GIS helps teams move from anecdotes to layers, from layers to evidence, and from evidence to action.</p>
      HTML
    },
    {
      title: "What is Technocritique?",
      slug: "what-is-technocritique",
      description: "Thoughts about Social Change in an era of extreme complexity.",
      date: "2022-07-14",
      image: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>One of the greatest problems behind political conflict is social reproduction: the way institutions, markets, technologies, and everyday habits preserve the same conditions while claiming to transform them.</p>
        <h2>Technocritique</h2>
        <p>Technocritique asks how technical systems organize desire, attention, work, and political imagination. It is not nostalgia against technology. It is a position for reading machines as social forms.</p>
        <h2>Critical action</h2>
        <p>Reality is not pure thinking. It is desire, infrastructure, incentives, and material constraints. Critical action begins when critique becomes an organized intervention in those constraints.</p>
      HTML
    }
  ].freeze

  ARTICLES_ES = [
    {
      title: "Redes para bases de conocimiento",
      slug: "knowledge-base-networking",
      description: "Sobre las funciones que faltan para una nueva era de redes sociales para nerds.",
      date: "2023-10-10",
      image: "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>Empece mi camino como desarrollador por el deseo de administrar PDFs, presentaciones y sitios web desde una sola fuente de verdad. Primero me enamore de Pandoc y Ruby Jekyll; despues llegaron OrgMode y Obsidian.</p>
        <p>Obsidian me parecio el recurso que hacia posible lo que OrgMode habia prometido: manejar vida, investigacion y proyectos sobre texto plano.</p>
        <h2>Consultas basadas en texto</h2>
        <p>Los avances recientes en markdown y renderizado hicieron de MDX una opcion viable para publicar contenido rico. Al mismo tiempo, Obsidian y Logseq abrieron posibilidades nuevas para escribir de forma estructurada.</p>
        <p>Basta un patron estandar para registrar tiempo y ya puedes obtener metricas de productividad. Ese es el tipo de poder que los plugins de bases de conocimiento trajeron a la mesa.</p>
        <h2>Interoperabilidad en el centro</h2>
        <p>Ideas viejas del movimiento open source regresan en este software: markdown con frontmatter, contenido como texto plano y un servidor que lo construye y lo sirve.</p>
        <p>En Ruby on Rails, <code>view_components</code> y Hotwire hacen esto posible.</p>
        <p>Todavia faltan funciones sociales para estos segundos cerebros: colaboracion, notificaciones, compartir, busqueda y etiquetas que entiendan el grafo de conocimiento.</p>
      HTML
    },
    {
      title: "La importancia de los datos geograficos en la investigacion contemporanea",
      slug: "the-importance-of-geographic-data-in-contemporary-research",
      description: "Que significan los Sistemas de Informacion Geografica para el futuro de la politica publica.",
      date: "2022-09-17",
      image: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>Los datos geograficos no son solo mapas. Son una forma de representar territorio, infraestructura, riesgo, desigualdad y decisiones publicas con suficiente precision para intervenir mejor.</p>
        <p>Cuando un problema publico tiene coordenadas, distancia, densidad y movimiento, la politica deja de hablar en abstracciones y empieza a mirar condiciones materiales.</p>
        <h2>GIS como infraestructura publica</h2>
        <p>Los Sistemas de Informacion Geografica conectan bases de datos, geometria, visualizacion y analisis. Permiten preguntar donde ocurre algo, como se relaciona con otros eventos y que patron emerge en el tiempo.</p>
        <h2>Por que importa</h2>
        <p>El futuro de la politica publica necesita herramientas precisas y legibles. GIS ayuda a pasar de anecdotas a capas, de capas a evidencia y de evidencia a accion.</p>
      HTML
    },
    {
      title: "Que es la tecnocritica?",
      slug: "what-is-technocritique",
      description: "Apuntes sobre cambio social en una era de complejidad extrema.",
      date: "2022-07-14",
      image: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>Uno de los grandes problemas detras del conflicto politico es la reproduccion social: la forma en que instituciones, mercados, tecnologias y habitos conservan las mismas condiciones mientras prometen transformarlas.</p>
        <h2>Tecnocritica</h2>
        <p>La tecnocritica pregunta como los sistemas tecnicos organizan deseo, atencion, trabajo e imaginacion politica. No es nostalgia contra la tecnologia; es una posicion para leer maquinas como formas sociales.</p>
        <h2>Accion critica</h2>
        <p>La realidad no es pensamiento puro. Es deseo, infraestructura, incentivos y restricciones materiales. La accion critica empieza cuando la critica se vuelve intervencion organizada en esas restricciones.</p>
      HTML
    }
  ].freeze

  def index
    @articles = articles
  end

  def show
    @article = articles.find { |a| a[:slug] == params[:slug] } || missing_article
  end

  private

  def articles
    spanish? ? ARTICLES_ES : ARTICLES_EN
  end

  def missing_article
    {
      title: spanish? ? "Articulo no encontrado" : "Article not found",
      slug: params[:slug],
      description: "",
      date: Date.today.to_s,
      content: spanish? ? "<p>Este articulo todavia no existe.</p>" : "<p>This article doesn't exist yet.</p>"
    }
  end
end
