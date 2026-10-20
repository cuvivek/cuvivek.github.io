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
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 10,
    day: 20,
  ),
)


= C U Vivek

#connections(
  [Bengaluru, Karnataka, India],
  [#link("mailto:vivekcu81@gmail.com", icon: false, if-underline: false, if-color: false)[vivekcu81\@gmail.com]],
  [#link("tel:+91-81244-88750", icon: false, if-underline: false, if-color: false)[081244 88750]],
  [#link("https://cuvivek.github.io/", icon: false, if-underline: false, if-color: false)[cuvivek.github.io]],
  [#link("https://linkedin.com/in/vivekcu", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/vivekcu]],
  [#link("https://github.com/cuvivek", icon: false, if-underline: false, if-color: false)[github.com\/cuvivek]],
)


== Summary

Senior Performance Engineer with over 10 years of experience architecting Non-Functional Testing (NFT) strategies, distributed system scalability, and enterprise resiliency across Banking, Telecom, and Energy domains. Track record scaling American Express Payment Network Authorization systems to 6,000+ TPS, architecting automated chaos & resiliency validation with Toxiproxy, and engineering autonomous AI performance agents using LangGraph & RAG. Recipient of the American Express Centurion Award 2025.

== Experience

#regular-entry(
  [
    #strong[Senior Performance Engineer - Senior Engineer II], American Express -- Bengaluru, Karnataka, India

  ],
  [
    Feb 2025 – present

  ],
  main-column-second-row: [
    - Architected and deployed an internal AI Performance Agent using #strong[LangGraph], Vector Databases, and Ollama\/Open-Source LLMs to automate performance test execution, multi-dimensional telemetry analysis, and conversational RAG diagnostics of historical defect patterns.

    - Spearheaded enterprise scalability and fault-tolerance initiatives for high-throughput payment authorization services.

  ],
)

#regular-entry(
  [
    #strong[Senior Performance Engineer - Senior Engineer I], American Express -- Bengaluru, Karnataka, India

  ],
  [
    Mar 2023 – Feb 2025

  ],
  main-column-second-row: [
    - Awarded the #strong[Centurion Award 2025], American Express's premier internal engineering recognition, for technical excellence and impact in system resiliency.

    - Led performance engineering for American Express Payment Network Authorization systems, achieving horizontal scalability to #strong[6,000 TPS] via microservices tuning, workload modeling, and thread\/heap dump profiling.

    - Containerized #strong[Toxiproxy] to simulate network degradation, packet jitter, and latency injection; designed automated chaos engineering experiments across distributed microservices to eliminate resiliency gaps.

    - Architected a Shift-Left Performance Testing framework integrated with #strong[GitHub Actions], enforcing automated throughput and latency validation gates during CI\/CD to eliminate post-production defects.

  ],
)

#regular-entry(
  [
    #strong[Performance Engineer - Engineer III], American Express -- Bengaluru, Karnataka, India

  ],
  [
    June 2021 – Mar 2023

  ],
  main-column-second-row: [
    - Executed large-scale distributed load tests using Apache JMeter and Grafana k6 across cloud-native container platforms.

    - Monitored and diagnosed distributed transaction traces, connection pools, and JVM garbage collection behavior using Dynatrace and JProfiler.

  ],
)

#regular-entry(
  [
    #strong[Performance Engineer (Amdocs Core R&D Division)], Amdocs India LLC -- Pune, Maharashtra, India

  ],
  [
    Nov 2019 – June 2021

  ],
  main-column-second-row: [
    - Certified monthly drop releases for microservices-based digital applications on #strong[Red Hat OpenShift (Kubernetes)] and #strong[AWS EKS] environments.

    - Executed end-to-end performance test monitoring, profiling, and bottleneck analysis across Couchbase, Apache Kafka, Prometheus, Grafana, and AWS services (EC2, RDS, MSK, CloudWatch).

    - Conducted Load, Stress, Stability, Scalability, High Availability (HA) Failover, and Chaos Monkey resiliency experiments.

    - Analyzed JVM thread and heap dumps with APM tools including Dynatrace, JProfiler, and JVisualVM to size production systems with enterprise architects.

  ],
)

#regular-entry(
  [
    #strong[Performance Engineer], Petrolink Data Services Pvt. Ltd. -- Pune, Maharashtra, India

  ],
  [
    July 2019 – Oct 2019

  ],
  main-column-second-row: [
    - Formulated Non-Functional Requirements (NFRs) and authored comprehensive Performance Test Plans.

    - Engineered end-to-end user traversal test suites using Apache JMeter and profiled server CPU and memory footprints.

  ],
)

#regular-entry(
  [
    #strong[Application Development Analyst], Accenture Solutions Pvt. Ltd. -- Pune, Maharashtra, India

  ],
  [
    Dec 2016 – July 2019

  ],
  main-column-second-row: [
    - Developed performance test scripts using HP \/ Micro Focus LoadRunner across Web (HTTP\/HTML) and Web Services protocols.

    - Administered StormRunner cloud testing platform, configuring load generator provisioning and debugging execution anomalies.

    - Conducted extensive load, stress, and endurance scenarios, analyzing server resource utilization and response times in Dynatrace.

  ],
)

== Honors and Awards

#regular-entry(
  [
    #strong[Centurion Award 2025]

  ],
  [
    2025

  ],
  main-column-second-row: [
    - Highest annual engineering recognition at American Express awarded for outstanding technical leadership, resilience engineering, and payment authorization scalability.

  ],
)

== Certifications

  #regular-entry(
  [
    #strong[AI Agents with LangGraph]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

  #regular-entry(
  [
    #strong[Hands-On AI: Build a RAG Model from Scratch with Open Source]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

  #regular-entry(
  [
    #strong[Microsoft Certified: Azure Fundamentals]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

  #regular-entry(
  [
    #strong[AWS Certified Solutions Architect – Associate (SAA)]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

  #regular-entry(
  [
    #strong[AWS Certified Cloud Practitioner (CLF)]

  ],
  [
  ],
  main-column-second-row: [
  ],
)

== Education

#education-entry(
  [
    #strong[Vellore Institute of Technology (VIT University)], Bachelor of Engineering (B.E.) in Civil Engineering -- Vellore, Tamil Nadu, India

  ],
  [
    July 2012 – June 2016

  ],
  main-column-second-row: [
    - Graduated with CGPA: 8.86 \/ 10

  ],
)

== Skills

#strong[AI & Autonomous Agents:] LangGraph, RAG (Retrieval-Augmented Generation), Vector Databases, Ollama, Open-Source LLMs, Autonomous Telemetry Diagnostics

#strong[Performance & Load Testing:] Apache JMeter, Grafana k6, Micro Focus LoadRunner, StormRunner, Workload Modeling, Capacity Planning

#strong[Observability & APM:] Dynatrace (OneAgent), Grafana, Prometheus, JProfiler, JVisualVM, JConsole, Heap & Thread Dump Analysis, GC Tuning

#strong[Resiliency & Chaos:] Toxiproxy, Chaos Engineering, Chaos Monkey, Latency & Jitter Injection, Failover & High Availability (HA)

#strong[Cloud & Containers:] Kubernetes, Red Hat OpenShift, AWS (EKS, EC2, RDS, MSK, CloudWatch), Docker

#strong[Distributed Data & CI\/CD:] Apache Kafka, Couchbase, Python, Bash Shell Scripting, GitHub Actions, Jenkins
