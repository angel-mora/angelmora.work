# frozen_string_literal: true

class WritingsController < ApplicationController
  def index
    @purchase_email = "angelmomaa@gmail.com"

    @reader_tracks = [
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
      },
      {
        number: "II",
        title: "Read this to make a real change",
        note: "The open reader hub: speed, real problems, principles, organization, action.",
        status: "Open hub",
        chapters: [
          { title: "Wiki = Rapido", page: "051", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/1-wiki-es-rapido" },
          { title: "These are the real problems", page: "061", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/2-los-problemas-reales" },
          { title: "Read this before doing something", page: "093", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/3-lee-esto-antes-de-hacer-algo" },
          { title: "Principles for effective action", page: "133", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/4-principios-para-accion-efectiva" },
          { title: "The organization we build", page: "151", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/5-la-organizacion-que-construimos" },
          { title: "Let us act", page: "171", href: "https://lephucr.com/libros/lee-esto-para-hacer-un-cambio-real/6-accionemos" }
        ]
      },
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
    ]

    @reader_modes = [
      [ "Critical theory", "Public choice, mercantile domination, state religion, and the public/private cut." ],
      [ "Design", "The book as interface: PDF, reader hub, Obsidian notes, and repository logic." ],
      [ "Art", "A restrained editorial object for people who still care about form, cadence, and public imagination." ]
    ]

    @deliverables = [
      [ "Digital formats", "PDF/ePub-ready delivery by email, prepared for slow reading and annotation." ],
      [ "Reader hub", "Open chapter links remain available before purchase so the reader can inspect the thesis." ],
      [ "Working archive", "Obsidian and GitHub access are part of the interoperable edition when available." ],
      [ "Correspondence", "The transaction starts with email, not a noisy checkout funnel." ]
    ]
  end
end
