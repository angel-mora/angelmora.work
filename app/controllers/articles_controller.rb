# frozen_string_literal: true

class ArticlesController < ApplicationController
  ARTICLES = [
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
        <p>Recent advances in markdown creation and rendering set MDX as the most viable option for writing awesome content. At the same time, the principles that run Obsidian and Logseq (the open source competitor) opened up a bunch of possibilities for writing in a structure way.</p>
        <p>Who would have thought that by simply setting a standard pattern to log your time would suffice to get metrics about your productivity? That's what the Knowledge Base plugins brought to the table.</p>
        <h2>Interoperability at the core of Knowledge Base Management</h2>
        <p>Old ideas that founded entire communities dedicated to open source, have finally wrapped up in these kind of software. And the SSR era brings just about the right amount of interoperability to make it possible. It's now possible to have markdown with frontmatter as plain text configured content and a server that builds it and serves its js all encapsulated.</p>
        <p>In Ruby on Rails, <code>view_components</code> and Hotwire have made this possible.</p>
        <p>However, we are still missing a few social features for those inner-life second brains:</p>
        <ol>
          <li><strong>Collaboration</strong>: I want to be able to share my knowledge base with my friends and colleagues. I want to be able to have a shared knowledge base with my team.</li>
          <li><strong>Notifications</strong>: I want to be able to get notified when someone mentions me in a note or when someone comments on a note I wrote.</li>
          <li><strong>Sharing</strong>: I want to be able to share a note with a friend or colleague. I want to be able to share a note with the world.</li>
          <li><strong>Search</strong>: I want to be able to search for notes in my knowledge base. I want to be able to search for notes in my team's knowledge base.</li>
          <li><strong>Tags</strong>: I want to be able to tag notes in my knowledge base. I want to be able to tag notes in my team's knowledge base.</li>
        </ol>
        <p>For these problems, we at <a href="https://naviknows.com">naviknows.com</a> are building a new way to manage and share your content, so you can treat your Knowledge Base as a single source of truth for everything. From pushing a post to your blog to sharing a note with a friend, now you are in control and you know what you are sharing is truly yours.</p>
      HTML
    },
    {
      title: "The Importance of Geographic Data in Contemporary Research",
      slug: "the-importance-of-geographic-data-in-contemporary-research",
      description: "What Geographic Information Systems (GIS) means for the future of Public Policy and how we can get there.",
      date: "2022-09-17",
      image: "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>When you're building a website for a company as ambitious as Planetaria, you need to make an impression. I wanted people to visit our website and see animations that looked more realistic than reality itself.</p>
        <p>To make this possible, we needed to squeeze every drop of performance out of the browser possible. And so Animaginary was born.</p>
        <p>Animaginary is our new web animation library that redefines what you thought was possible on the web. Hand-written in optimized WASM, Animaginary can even animate the <code>height</code> property of an element at 60fps.</p>
        <h2>Sermone fata</h2>
        <p>Lorem markdownum, bracchia in redibam! Terque unda puppi nec, linguae posterior in utraque respicere candidus Mimasque formae; quae conantem cervice. Parcite variatus, redolentia adeunt. Tyrioque dies, naufraga sua adit partibus celanda torquere temptata, erit maneat et ramos, <a href="#">iam</a> ait dominari potitus! Tibi litora matremque fumantia condi radicibus opusque.</p>
        <p>Deus feram verumque, fecit, ira tamen, terras per alienae victum. Mutantur levitate quas ubi arcum ripas oculos abest. Adest <a href="#">commissaque victae</a> in gemitus nectareis ire diva dotibus ora, et findi huic invenit; fatis? Fractaque dare superinposita nimiumque simulatoremque sanguine, at voce aestibus diu! Quid veterum hausit tu nil utinam paternos ima, commentaque.</p>
        <h2>Lethaei Pindumve me quae dinumerat Pavor</h2>
        <p>Idem se saxa fata pollentibus geminos; quos pedibus. Est urnis Herses omnes nec divite: et ille illa furit sim verbis Cyllenius.</p>
        <ol>
          <li>Captus inpleverunt collo</li>
          <li>Nec nam placebant</li>
          <li>Siquos vulgus</li>
          <li>Dictis carissime fugae</li>
          <li>A tacitos nulla viginti</li>
        </ol>
        <p>Sit volat naturam; motu Cancri. Erat pro simul quae valuit quoque timorem quam proelia: illo patrio <em>esse summus</em>, enim sua serpentibus, Hyleusque. Est coniuge recuso; refert Coroniden ignotos manat, adfectu.</p>
      HTML
    },
    {
      title: "What is Technocritique?",
      slug: "what-is-technocritique",
      description: "Thoughts about Social Change in an era of extreme complexity.",
      date: "2022-07-14",
      image: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800&h=400&fit=crop",
      content: <<~HTML
        <p>One of the greatest problems that cause political conflict is Social Reproduction.</p>
        <h2>What is Neoreaction?</h2>
        <h2>Lonely People is all I see</h2>
        <p>No doubt that internet communities have shaped and changed the way how we concieve reality. And in a world dominated by the spectre of Chad and Stacy as the dual face of Heteronormativy, most of the people are left with a deep feeling of insatisfaction. But neither Right nor Left Wings leaders have been able to face the situation in its full expansiveness.</p>
        <h2>How Critical Theory failed to us?</h2>
        <p>Reality is not pure thinking. It's actually quite the opposite. It's mostly desire. Desire intertwingled with Economic Goods, over a Leviathan-like electromateriality circuitry.</p>
      HTML
    }
  ].freeze

  def index
    @articles = ARTICLES
  end

  def show
    @article = ARTICLES.find { |a| a[:slug] == params[:slug] } ||
      { title: "Article not found", slug: params[:slug], description: "", date: Date.today.to_s, content: "<p>This article doesn't exist yet.</p>" }
  end
end