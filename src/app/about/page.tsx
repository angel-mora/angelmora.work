import { type Metadata } from 'next'
import Image from 'next/image'
import Link from 'next/link'
import clsx from 'clsx'

import { Container } from '@/components/Container'
import {
  GitHubIcon,
  InstagramIcon,
  LinkedInIcon,
  TwitterIcon,
} from '@/components/SocialIcons'
import portraitImage from '@/images/portrait.jpg'

function SocialLink({
  className,
  href,
  children,
  icon: Icon,
}: {
  className?: string
  href: string
  icon: React.ComponentType<{ className?: string }>
  children: React.ReactNode
}) {
  return (
    <li className={clsx(className, 'flex')}>
      <Link
        href={href}
        className="group flex text-sm font-medium text-zinc-800 transition hover:text-teal-500 dark:text-zinc-200 dark:hover:text-teal-500"
      >
        <Icon className="h-6 w-6 flex-none fill-zinc-500 transition group-hover:fill-teal-500" />
        <span className="ml-4">{children}</span>
      </Link>
    </li>
  )
}

function MailIcon(props: React.ComponentPropsWithoutRef<'svg'>) {
  return (
    <svg viewBox="0 0 24 24" aria-hidden="true" {...props}>
      <path
        fillRule="evenodd"
        d="M6 5a3 3 0 0 0-3 3v8a3 3 0 0 0 3 3h12a3 3 0 0 0 3-3V8a3 3 0 0 0-3-3H6Zm.245 2.187a.75.75 0 0 0-.99 1.126l6.25 5.5a.75.75 0 0 0 .99 0l6.25-5.5a.75.75 0 0 0-.99-1.126L12 12.251 6.245 7.187Z"
      />
    </svg>
  )
}

export const metadata: Metadata = {
  title: 'About',
  description:
    "I'm Angel Mora, Philosopher and Programmer with 5 years of experience",
}

export default function About() {
  return (
    <Container className="mt-16 sm:mt-32">
      <div className="grid grid-cols-1 gap-y-16 lg:grid-cols-2 lg:grid-rows-[auto_1fr] lg:gap-y-12">
        <div className="lg:pl-20">
          <div className="max-w-xs px-2.5 lg:max-w-none">
            <Image
              src={portraitImage}
              alt=""
              sizes="(min-width: 1024px) 32rem, 20rem"
              className="aspect-square rotate-3 rounded-2xl bg-zinc-100 object-cover dark:bg-zinc-800"
            />
          </div>
        </div>
        <div className="lg:order-first lg:row-span-2">
          <h1 className="text-4xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-5xl">
            I'm Angel Mora, Philosopher and Programmer
          </h1>
          <h3 className="text-5xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-4xl mt-6">
            +5 years of experience
          </h3>

          <div className="mt-6 space-y-7 text-base text-zinc-600 dark:text-zinc-400">
            <p>
              I've always been passionate about programming.
              Got my first computer when I was 10 and been breaking stuff ever since.
              During college, spent hours in Linux, reading a lot about distros and the Open Source Software Movement.
              A few years later (2017) started with Ruby and Jekyll, writing a blog called disonancias.org.
              From there, felt in love with Javascript and found my way through GitHub amazing features.
              Worked in a Call Center for AT&T and learned a lot about debugging the browser, performing complex SQL queries.
              I always remember all those good lessons from there, like learning to sale under stressful environments, as well as engaging with customers. Later I found out that AT&T proudly follows Sigma6 methodology. I have those moments deep in my heart. 
            </p>
            <p>
              My first technical challenges were related to automate writing with Pandoc and Bash.
              Unix Filesystem and some Bash scripting soon helped me to understand that programming languages are just ways to interact with the powerful system a computer is.
              In 2019 landed my first formal job as a Data Analyst using R, Python and some OSINT tools for Crime Analysis.
              In that job discovered the power of having an application that secures your research.
              That year also got accepted at Microverse, a bootcamp that teaches Fullstack Web Development with Ruby on Rails + ReactJS, which led me to start helping migrate the company processes into a web application with multiple features, most of them related to PostGIS and Geographical Data Visualization, using tools like Leaflet.js and Kepler.gl.
            </p>
            <p>
              In 2023 finished a Cybersecurity Bootcamp from EdX that helped me get my CompTIA Security+ Certification.
              I currently work at an International Company.
              Spend my days improving my Obsidian skills and developing a side project for Knowledge Base Networking. I like old-school text editors, like Vim and Emacs.
            </p>
            <p>
              I'm an enthusiast of GIS projects and of The Rails Way. If you find my profile interesting, don't hesitate to reach out!
            </p>
          </div>
        </div>
        <div className="lg:pl-20">
          <ul role="list">
            <SocialLink href="https://twitter.com/angelmoradev" icon={TwitterIcon}>
              Follow on Twitter
            </SocialLink>
            <SocialLink href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" icon={InstagramIcon} className="mt-4">
              Follow on Instagram
            </SocialLink>
            <SocialLink href="https://github.com/angel-mora" icon={GitHubIcon} className="mt-4">
              Follow on GitHub
            </SocialLink>
            <SocialLink href="https://linkedin.com/in/angelmoradev" icon={LinkedInIcon} className="mt-4">
              Follow on LinkedIn
            </SocialLink>
            <SocialLink
              href="mailto:angelmomaa@gmail.com"
              icon={MailIcon}
              className="mt-8 border-t border-zinc-100 pt-8 dark:border-zinc-700/40"
            >
              angelmomaa@gmail.com
            </SocialLink>
          </ul>
        </div>
      </div>
    </Container>
  )
}
