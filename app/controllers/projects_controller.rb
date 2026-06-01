# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @projects = [
      { name: "naviknows.com", description: "A Mastodon instance that supports Hotwire from Obsidian rendered content.", link: "https://naviknows.com", logo_initial: "N" },
      { name: "dissonances.biz", description: "Obsidiosaurus and TinaCMS had a baby over my Critical Theory of Technology writings.", link: "#", logo_initial: "D" },
      { name: "Dotfiles & Obsidian templates", description: "Config I use, recommend and enforce. Handle everything as markdown.", link: "#", logo_initial: "O" },
      { name: "opengeodata.world", description: "An open-source initiative to visualize the world demographics with Kepler.gl.", link: "https://opengeodata.world", logo_initial: "O" },
      { name: "My Second Brain", description: "This project — a Rails wrapper around Quartz for my personal knowledge vault.", link: "#", logo_initial: "M" }
    ]
  end
end