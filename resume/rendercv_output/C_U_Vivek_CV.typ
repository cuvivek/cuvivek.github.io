// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "C U Vivek",
  title: "C U Vivek - CV",
  footer: context { [#emph[C U Vivek -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Oct 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 10,
    day: 20,
  ),
)


= C U Vivek

#connections(
  [#connection-with-icon("location-dot")[Bengaluru, Karnataka, India]],
  [#link("mailto:vivekcu81@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[vivekcu81\@gmail.com]]],
  [#link("tel:+91-81244-88750", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[081244 88750]]],
  [#link("https://cuvivek.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[cuvivek.github.io]]],
  [#link("https://linkedin.com/in/vivekcu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[vivekcu]]],
)


== Summary

Senior Performance Engineer with over 10 years of experience architecting Non-Functional Testing (NFT) strategies, distributed system scalability, and enterprise resiliency across Banking, Telecom, and Energy domains. Track record scaling American Express Payment Network Authorization systems to 6,000+ TPS, architecting automated chaos & resiliency validation with Toxiproxy, and engineering autonomous AI performance agents using LangGraph & RAG. Recipient of the American Express Centurion Award 2025.

== Experience

#regular-entry(
  [
    #strong[American Express], Senior Performance Engineer - Senior Engineer II

    - Architected and deployed an internal AI Performance Agent using #strong[LangGraph], Vector Databases, and Ollama\/Open-Source LLMs to automate performance test execution, multi-dimensional telemetry analysis, and conversational RAG diagnostics of historical defect patterns.

    - Spearheaded enterprise scalability and fault-tolerance initiatives for high-throughput payment authorization services.

    - Awarded the #strong[Centurion Award 2025], American Express's premier internal engineering recognition, for technical excellence and impact in system resiliency.

    - Led performance engineering for American Express Payment Network Authorization systems, achieving horizontal scalability to #strong[6,000 TPS] via microservices tuning, workload modeling, and thread\/heap dump profiling.

    - Containerized #strong[Toxiproxy] to simulate network degradation, packet jitter, and latency injection; designed automated chaos engineering experiments across distributed microservices to eliminate resiliency gaps.

    - Architected a Shift-Left Performance Testing framework integrated with #strong[GitHub Actions], enforcing automated throughput and latency validation gates during CI\/CD to eliminate post-production defects.

    - Executed large-scale distributed load tests using Apache JMeter and Grafana k6 across cloud-native container platforms.

    - Monitored and diagnosed distributed transaction traces, connection pools, and JVM garbage collection behavior using Dynatrace and JProfiler.

  ],
  [
    Bengaluru, Karnataka, India

    June 2021 – present

    

    5 years 5 months

  ],
)

#regular-entry(
  [
    #strong[Amdocs India LLC], Performance Engineer (Amdocs Core R&D Division)

    - Certified monthly drop releases for microservices-based digital applications on #strong[Red Hat OpenShift (Kubernetes)] and #strong[AWS EKS] environments.

    - Executed end-to-end performance test monitoring, profiling, and bottleneck analysis across Couchbase, Apache Kafka, Prometheus, Grafana, and AWS services (EC2, RDS, MSK, CloudWatch).

    - Conducted Load, Stress, Stability, Scalability, High Availability (HA) Failover, and Chaos Monkey resiliency experiments.

    - Analyzed JVM thread and heap dumps with APM tools including Dynatrace, JProfiler, and JVisualVM to size production systems with enterprise architects.

  ],
  [
    Pune, Maharashtra, India

    Nov 2019 – June 2021

    

    1 year 8 months

  ],
)

#regular-entry(
  [
    #strong[Petrolink Data Services Pvt. Ltd.], Performance Engineer

    - Formulated Non-Functional Requirements (NFRs) and authored comprehensive Performance Test Plans.

    - Engineered end-to-end user traversal test suites using Apache JMeter and profiled server CPU and memory footprints.

  ],
  [
    Pune, Maharashtra, India

    July 2019 – Oct 2019

    

    4 months

  ],
)

#regular-entry(
  [
    #strong[Accenture Solutions Pvt. Ltd.], Application Development Analyst

    - Developed performance test scripts using HP \/ Micro Focus LoadRunner across Web (HTTP\/HTML) and Web Services protocols.

    - Administered StormRunner cloud testing platform, configuring load generator provisioning and debugging execution anomalies.

    - Conducted extensive load, stress, and endurance scenarios, analyzing server resource utilization and response times in Dynatrace.

  ],
  [
    Pune, Maharashtra, India

    Dec 2016 – July 2019

    

    2 years 8 months

  ],
)

== Honors and Awards

#regular-entry(
  [
    #strong[Centurion Award 2025]

    - Highest annual engineering recognition at American Express awarded for outstanding technical leadership, resilience engineering, and payment authorization scalability.

  ],
  [
    2025

  ],
)

== Certifications

#regular-entry(
  [
    #strong[AI Agents with LangGraph]

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Hands-On AI: Build a RAG Model from Scratch with Open Source]

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Microsoft Certified: Azure Fundamentals]

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[AWS Certified Solutions Architect – Associate (SAA)]

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[AWS Certified Cloud Practitioner (CLF)]

  ],
  [
  ],
)

== Education

#education-entry(
  [
    #strong[Vellore Institute of Technology (VIT University)], Civil Engineering

    - Graduated with CGPA: 8.86 \/ 10

  ],
  [
    Vellore, Tamil Nadu, India

    July 2012 – June 2016

  ],
  degree-column: [
    #strong[B.Tech]
  ],
)

== Skills

#strong[AI & Autonomous Agents:] LangGraph, RAG (Retrieval-Augmented Generation), Vector Databases, Ollama, Open-Source LLMs, Autonomous Telemetry Diagnostics

#strong[Performance & Load Testing:] Apache JMeter, Grafana k6, Micro Focus LoadRunner, StormRunner, Workload Modeling, Capacity Planning

#strong[Observability & APM:] Dynatrace (OneAgent), Grafana, Prometheus, JProfiler, JVisualVM, JConsole, Heap & Thread Dump Analysis, GC Tuning

#strong[Resiliency & Chaos:] Toxiproxy, Chaos Engineering, Chaos Monkey, Latency & Jitter Injection, Failover & High Availability (HA)

#strong[Cloud & Containers:] Kubernetes, Red Hat OpenShift, AWS (EKS, EC2, RDS, MSK, CloudWatch), Docker

#strong[Distributed Data & CI\/CD:] Apache Kafka, Couchbase, Python, Bash Shell Scripting, GitHub Actions, Jenkins
