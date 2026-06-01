# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = [
      { title: "Knowledge Base Networking", slug: "knowledge-base-networking", description: "About the missing features for a new era of Social Networks for nerds.", date: "2023-10-10", image: "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&h=400&fit=crop" },
      { title: "The Importance of Geographic Data in Contemporary Research", slug: "the-importance-of-geographic-data-in-contemporary-research", description: "What Geographic Information Systems (GIS) means for the future of Public Policy and how we can get there.", date: "2022-09-17", image: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=800&h=400&fit=crop" },
      { title: "What is Technocritique?", slug: "what-is-technocritique", description: "Thoughts about Social Change in an era of extreme complexity.", date: "2022-07-14", image: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&h=400&fit=crop" }
    ]
  end
end