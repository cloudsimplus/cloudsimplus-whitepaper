# CloudSim Plus: A Modern Java 8 Framework for Modeling and Simulation of Cloud Computing Infrastructures and Services
*By Manoel C. Silva Filho, Raysa L. Oliveira, Claudio C. Monteiro, Pedro R. M. Inácio and Mário M. Freire.*

![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Introduction

Cloud Computing is an important technology that has leveraged innovation in different knowledge fields and economic sectors by providing distributed, scalable, manageable and fault-tolerant computing resources over the Internet. The large adopotion of Cloud computing services can be also explained by diverse reasons such as its pay-per-use charging model that enables cost reduction for customers, the rapid and automated allocation of resources that enable applications to quickly respond to bursts, and full-featured web and console interfaces that enable customers to configure hosted services easily.

The advances brought by Cloud Computing are backup up by academy and industry research and have increasingly attracted new researchers. There are different issues to be addressed that makes Cloud to be an active research field, including SLA fulfillment,  optimal VM placement and migration, cost reduction, power efficiency, hotspot detection, load balance, fault tolerance, anomalies detection, security enforcement, traffic and latency reduction and so on.

Considering the complexity of a Cloud infrastructure and the need to model proposed solutions and evaluate them in a quick, cheap and repeatable way, using a controlled environment that makes it easy to monitor and collect metrics, computer-based simulation is largely used to carry out research in this field.

Accordingly, in this article we present CloudSim Plus, a new, full-featured, re-designed, highly extensible and modern Java 8 framework to enable modeling and simulation of Cloud Computing infrastructure, services, underlying mechanisms and algorithms. It is an open source project available at <http://cloudsimplus.org> and [Maven Central](http://cloudsimplus.org/docs/maven.html).

## Overview
CloudSim Plus is a simulation framework based on CloudSim 3, that went through an extensive re-design and re-engineering process to provide an updated, modern, more accurate, highly extensible, easier-to-use and state-of-the-art framework that ensures sustainable maintainability for long-term evolution. To achieve these goals, CloudSim Plus is founded on several software design and engineering metrics, principles and practices such as [coupling](https://en.wikipedia.org/wiki/Coupling_(computer_programming)), [cohesion](https://en.wikipedia.org/wiki/Cohesion_(computer_science)), [Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern), [SOLID principles](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)) and other ones like [Don't repeat  yourself (DRY)](https://pt.wikipedia.org/wiki/Don't_repeat_yourself) and [KISS](https://en.wikipedia.org/wiki/KISS_principle).

## Philosophy and Motivation
[Software quality](https://en.wikipedia.org/wiki/Software_quality) has increasingly become an important aspect for software industry, as can be seen by the number of different software design and development methodologies and processes such as [Domain-Driven Design (DDD)](https://en.wikipedia.org/wiki/Domain-driven_design), [Test-Driven Development (TDD)](https://en.wikipedia.org/wiki/Test-driven_development), [Behavior-Driven Development (BDD)](https://en.wikipedia.org/wiki/Behavior-driven_development), Clean Code Programming and many more. Different tools have been used to collect and monitor software quality metrics to try detecting issues as soon as possible, such as [Static Code Analysis](https://en.wikipedia.org/wiki/Static_program_analysis) and [Integration Testing](https://en.wikipedia.org/wiki/Integration_testing) in an automated [Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration) environment.

We understand that the same software quality pursued by the software industry must as well be pursued by academic projects to reduce [technical debt](https://en.wikipedia.org/wiki/Technical_debt) and avoid [software erosion](https://en.wikipedia.org/wiki/Software_rot), delivering industry-standard quality products. 

We are strong adepts of open source philosophy. We started by effectively contributing to CloudSim and we have a developer in the top position of contributors from 2015 to 2016, and [such a position holds up to 2017](https://github.com/Cloudslab/cloudsim/graphs/contributors?from=2015-03-18&to=2017-01-30). However, since CloudSim is not highly compliant with these software design and engineering principles, practices and philosophies and our team has different views of how the framework should evolve, we decided to start CloudSim Plus as an independent fork. We also believe that source code needs to be curated, without meaning that will restrict contributions, as it is successfully proved by important projects like the [Linux Kernel](https://github.com/torvalds/linux).

Finally, enforcement of backward compatibility is a common concern in software development, mainly for public APIs such as those ones provided by a framework. However, such a concern slows down software evolution and we contrary understand that a cloud simulation framework is predominantly used for research purposes, even by industry. Cloud simulation scenarios are tightly coupled to a specific version of the simulation framework and after they produces the final results and the research goes on, new scenarios can be built using an updated version of the framework, without worrying about the older scenario. Accordingly, we are not afraid of breaking compatibility so that we can foster project advances.

## Exclusive Features

## Usage Examples

## Conclusion and Future Work

## Acknowledge 
- CAPES, FCT, IT, UBI, EU/Brazil Cloud Forum.

