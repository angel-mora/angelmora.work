# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = spanish? ? projects_es : projects_en
  end

  private

  def projects_en
    [
      { name: "naviknows.com", description: "A Mastodon instance that supports Hotwire from Obsidian rendered content.", link: "https://naviknows.com", logo_initial: "N" },
      { name: "dissonances.biz", description: "Obsidiosaurus and TinaCMS had a baby over my Critical Theory of Technology writings.", link: "#", logo_initial: "D" },
      { name: "Dotfiles & Obsidian templates", description: "Config I use, recommend and enforce. Handle everything as markdown.", link: "#", logo_initial: "O" },
      { name: "opengeodata.world", description: "An open-source initiative to visualize world demographics with Kepler.gl.", link: "https://opengeodata.world", logo_initial: "O" },
      { name: "My Second Brain", description: "This project: a Rails wrapper around Quartz for my personal knowledge vault.", link: "#", logo_initial: "M" }
    ]
  end

  def projects_es
    [
      { name: "naviknows.com", description: "Una instancia Mastodon con soporte para Hotwire a partir de contenido renderizado desde Obsidian.", link: "https://naviknows.com", logo_initial: "N" },
      { name: "dissonances.biz", description: "Obsidiosaurus y TinaCMS tuvieron un hijo alrededor de mis textos sobre teoria critica de la tecnologia.", link: "#", logo_initial: "D" },
      { name: "Dotfiles & plantillas Obsidian", description: "Configuracion que uso, recomiendo y fuerzo. Todo se maneja como markdown.", link: "#", logo_initial: "O" },
      { name: "opengeodata.world", description: "Una iniciativa open-source para visualizar demografia mundial con Kepler.gl.", link: "https://opengeodata.world", logo_initial: "O" },
      { name: "My Second Brain", description: "Este proyecto: un wrapper Rails alrededor de Quartz para mi vault personal de conocimiento.", link: "#", logo_initial: "M" }
    ]
  end
end
