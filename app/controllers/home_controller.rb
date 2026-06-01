# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = [
      { title: "Knowledge Base Networking", slug: "knowledge-base-networking", description: "About the missing features for a new era of Social Networks for nerds.", date: "2023-10-10" },
      { title: "The Importance of Geographic Data in Contemporary Research", slug: "the-importance-of-geographic-data-in-contemporary-research", description: "What Geographic Information Systems (GIS) means for the future of Public Policy and how we can get there.", date: "2022-09-17" },
      { title: "What is Technocritique?", slug: "what-is-technocritique", description: "Thoughts about Social Change in an era of extreme complexity.", date: "2022-07-14" }
    ]
  end
end