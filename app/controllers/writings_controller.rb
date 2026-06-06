# frozen_string_literal: true

class WritingsController < ApplicationController
  def index
    @purchase_email = "angelmomaa@gmail.com"
    @reader_tracks = spanish? ? reader_tracks_es : reader_tracks_en
    @reader_modes = spanish? ? reader_modes_es : reader_modes_en
    @deliverables = spanish? ? deliverables_es : deliverables_en
  end

  private

  def reader_tracks_en
    [ reader_track_archive_en, reader_track_hub_en, reader_track_critical_en ]
  end

  def reader_tracks_es
    [ reader_track_archive_es, reader_track_hub_es, reader_track_critical_es ]
  end

  def reader_track_archive_en
    {
      number: "I",
      title: "Facing the past to imagine the future",
      note: "Memory, political inheritance, and the first public position.",
      status: "Archive",
      chapters: [
        { title: "Facing the past to imagine the future", page: "001" },
        { title: "Manifesto of La Partida", page: "007" },
        { title: "To be or take sides", page: "015" },
        { title: "The institutional struggle", page: "017" },
        { title: "Our feeling-thinking", page: "023" }
      ]
    }
  end

  def reader_track_archive_es
    {
      number: "I",
      title: "Plantar cara al pasado para imaginar el porvenir",
      note: "Memoria, herencia politica y la primera posicion publica.",
      status: "Archivo",
      chapters: [
        { title: "Plantar cara al pasado para imaginar el porvenir", page: "001" },
        { title: "Manifiesto de La Partida", page: "007" },
        { title: "Ser o tomar partido", page: "015" },
        { title: "La lucha institucional", page: "017" },
        { title: "Nuestro sentir-pensar", page: "023" }
      ]
    }
  end

  def reader_track_hub_en
    {
      number: "II",
      title: "Read this to make a real change",
      note: "The open reader hub: speed, real problems, principles, organization, action.",
      status: "Open hub",
      chapters: reader_hub_chapters_en
    }
  end

  def reader_track_hub_es
    {
      number: "II",
      title: "Lee esto para hacer un cambio real",
      note: "El hub abierto de lectura: velocidad, problemas reales, principios, organizacion y accion.",
      status: "Hub abierto",
      chapters: reader_hub_chapters_es
    }
  end

  def reader_hub_chapters_en
    [
      { title: "Wiki = Fast", page: "051", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/1-wiki-es-rapido" },
      { title: "These are the real problems", page: "061", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/2-los-problemas-reales" },
      { title: "Read this before doing something", page: "093", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/3-lee-esto-antes-de-hacer-algo" },
      { title: "Principles for effective action", page: "133", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/4-principios-para-accion-efectiva" },
      { title: "The organization we build", page: "151", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/5-la-organizacion-que-construimos" },
      { title: "Let us act", page: "171", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/6-accionemos" }
    ]
  end

  def reader_hub_chapters_es
    [
      { title: "Wiki = Rapido", page: "051", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/1-wiki-es-rapido" },
      { title: "Estos son los problemas reales", page: "061", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/2-los-problemas-reales" },
      { title: "Lee esto antes de hacer algo", page: "093", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/3-lee-esto-antes-de-hacer-algo" },
      { title: "Principios para la accion efectiva", page: "133", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/4-principios-para-accion-efectiva" },
      { title: "La organizacion que construimos", page: "151", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/5-la-organizacion-que-construimos" },
      { title: "Accionemos", page: "171", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/6-accionemos" }
    ]
  end

  def reader_track_critical_en
    {
      number: "III",
      title: "On critical action",
      note: "Neonarration, state religion, empire, bloom, and the technocritical position.",
      status: "Forthcoming",
      chapters: [
        { title: "On critical action", page: "181" },
        { title: "Neonarration reveals the crisis of the modern State", page: "185" },
        { title: "The modern State is nothing but State religion", page: "219" },
        { title: "The contemporary face of the modern State is Empire", page: "267" },
        { title: "The bloom is the economic subject of Empire", page: "321" },
        { title: "The technocritical position is the dismissal of Empire", page: "347" }
      ]
    }
  end

  def reader_track_critical_es
    {
      number: "III",
      title: "Sobre la accion critica",
      note: "Neonarracion, religion de Estado, Imperio, bloom y posicion tecnocritica.",
      status: "Proximamente",
      chapters: [
        { title: "Sobre la accion critica", page: "181" },
        { title: "La neonarracion devela la crisis del Estado moderno", page: "185" },
        { title: "El Estado moderno no es otra cosa que religion de Estado", page: "219" },
        { title: "El rostro contemporaneo del Estado moderno es el Imperio", page: "267" },
        { title: "El bloom es el sujeto economico del Imperio", page: "321" },
        { title: "La posicion tecnocritica es la destitucion del Imperio", page: "347" }
      ]
    }
  end

  def reader_modes_en
    [
      [ "Critical theory", "Public choice, mercantile domination, state religion, and the public/private cut." ],
      [ "Design", "The book as interface: PDF, reader hub, Obsidian notes, and repository logic." ],
      [ "Art", "A restrained editorial object for people who still care about form, cadence, and public imagination." ]
    ]
  end

  def reader_modes_es
    [
      [ "Teoria critica", "Eleccion publica, dominacion mercantil, religion de Estado y el corte publico/privado." ],
      [ "Diseno", "El libro como interfaz: PDF, hub lector, notas Obsidian y logica de repositorio." ],
      [ "Arte", "Un objeto editorial sobrio para gente que todavia cuida forma, cadencia e imaginacion publica." ]
    ]
  end

  def deliverables_en
    [
      [ "Digital formats", "PDF/ePub-ready delivery by email, prepared for slow reading and annotation." ],
      [ "Reader hub", "Open chapter links remain available before purchase so the reader can inspect the thesis." ],
      [ "Working archive", "Obsidian and GitHub access are part of the interoperable edition when available." ],
      [ "Correspondence", "The transaction starts with email, not a noisy checkout funnel." ]
    ]
  end

  def deliverables_es
    [
      [ "Formatos digitales", "Entrega por email lista para PDF/ePub, preparada para lectura lenta y anotacion." ],
      [ "Hub lector", "Los capitulos abiertos siguen disponibles antes de comprar para inspeccionar la tesis." ],
      [ "Archivo de trabajo", "Acceso a Obsidian y GitHub como parte de la edicion interoperable cuando este disponible." ],
      [ "Correspondencia", "La transaccion empieza por email, no por un funnel ruidoso." ]
    ]
  end
end
