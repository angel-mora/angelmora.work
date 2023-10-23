import { type Metadata } from 'next'

import { Card } from '@/components/Card'
import { Section } from '@/components/Section'
import { SimpleLayout } from '@/components/SimpleLayout'

function SpeakingSection({
  children,
  ...props
}: React.ComponentPropsWithoutRef<typeof Section>) {
  return (
    <Section {...props}>
      <div className="space-y-16">{children}</div>
    </Section>
  )
}

function Appearance({
  title,
  description,
  event,
  cta,
  href,
}: {
  title: string
  description: string
  event: string
  cta: string
  href: string
}) {
  return (
    <Card as="article">
      <Card.Title as="h3" href={href}>
        {title}
      </Card.Title>
      <Card.Eyebrow decorate>{event}</Card.Eyebrow>
      <Card.Description>{description}</Card.Description>
      <Card.Cta>{cta}</Card.Cta>
    </Card>
  )
}

export const metadata: Metadata = {
  title: 'Speaking',
  description:
    'Find livestreams over different topics I like to talk about.',
}

export default function Speaking() {
  return (
    <SimpleLayout
      title="Find livestreams over different topics I like to talk about."
      intro="One of my favorite ways to share my ideas is over YouTube, where there’s access to a broad audience always willing to enrich the discussion. I like to engage with my viewers over multiple Social Media. I'm also a big fan of podcasts."
    >
      <div className="space-y-20">
        <SpeakingSection title="Presentations">
          <Appearance
            href="#"
            title="CI/CD with SAST and DAST for DevSecOps"
            description="My final presentation for the Bootcamp, where I stand for DevSecOps."
            event="EDx-ITESM Bootcamp, October 2023"
            cta="Watch video"
          />
        </SpeakingSection>
        <SpeakingSection title="Podcasts">
          <Appearance
            href="#"
            title="How Academia made Critical Theory boring"
            description="A discussion with some friends about how suddenly there is no room for people with fresh ideas at Universities in Mexico."
            event="Dissonances, July 2022"
            cta="Listen to podcast"
          />
        </SpeakingSection>
      </div>
    </SimpleLayout>
  )
}
