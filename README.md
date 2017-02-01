# CloudSim Plus: A Modern Java 8 Framework for Modeling and Simulation of Cloud Computing Infrastructures and Services

_By _[_Manoel C. Silva Filho_](http://twitter.com/manoelcampos)_, _[_Raysa L. Oliveira_](http://twitter.com/raysaloliveira)_, Claudio C. Monteiro, Pedro R. M. Inácio and Mário M. Freire._

![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)  
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Introduction

Cloud Computing is an important technology that has leveraged innovation in different knowledge fields and economic sectors by providing distributed, scalable, manageable and fault-tolerant computing resources over the Internet. The large adopotion of Cloud computing services can be also explained by diverse reasons such as its pay-per-use charging model that enables cost reduction for customers, the rapid and automated allocation of resources that enable applications to quickly respond to bursts, and full-featured web and console interfaces that enable customers to configure hosted services easily.

The advances brought by Cloud Computing are backup up by academy and industry research and have increasingly attracted new researchers. There are different issues to be addressed that makes Cloud to be an active research field, including SLA fulfillment, optimal VM placement and migration, cost reduction, power efficiency, hotspot detection, load balance, fault tolerance, anomalies detection, security enforcement, traffic and latency reduction and so on.

Considering the complexity of a Cloud infrastructure and the need to model proposed solutions and evaluate them in a quick, cheap and repeatable way, using a controlled environment that makes it easy to monitor and collect metrics, computer-based simulation is largely used to carry out research in this field.

Accordingly, in this article we present CloudSim Plus, a new, full-featured, re-designed, highly extensible and modern Java 8 framework to enable modeling and simulation of Cloud Computing infrastructure, services, underlying mechanisms and algorithms. CloudSim Plus enable researchers to model and simulate different Cloud scenarios, by implementing them using Java. Such scenarios can be used to experiment existing and potential solutions for the issues mentioned above. 

CloudSim Plus is an open source project available at [http://cloudsimplus.org](http://cloudsimplus.org) and [Maven Central](http://cloudsimplus.org/docs/maven.html).

## Overview

CloudSim Plus is a simulation framework based on CloudSim 3, that went through an extensive re-design and re-engineering process to provide an updated, modern, more accurate, highly extensible, easier-to-use and state-of-the-art framework aiming sustainable maintainability for long-term evolution. To achieve such goals, CloudSim Plus is founded on several software design and engineering metrics, principles and practices such as [Coupling](https://en.wikipedia.org/wiki/Coupling_(computer_programming)\), [Cohesion](https://en.wikipedia.org/wiki/Cohesion_(computer_science)\), [Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern), [SOLID principles](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)\) and other ones like [Don't Repeat Yourself \(DRY\)](https://pt.wikipedia.org/wiki/Don't_repeat_yourself) and [KISS](https://en.wikipedia.org/wiki/KISS_principle).

## Philosophy and Motivation

[Software quality](https://en.wikipedia.org/wiki/Software_quality) has increasingly become essential for software industry, as can be seen by the number of current software design and development methodologies and processes such as [Domain-Driven Design \(DDD\)](https://en.wikipedia.org/wiki/Domain-driven_design), [Test-Driven Development \(TDD\)](https://en.wikipedia.org/wiki/Test-driven_development), [Behavior-Driven Development \(BDD\)](https://en.wikipedia.org/wiki/Behavior-driven_development), Clean Code Programming and many more. Different tools have been used to collect and monitor software quality metrics to try detecting issues as soon as possible, such as [Static Code Analysis](https://en.wikipedia.org/wiki/Static_program_analysis) and [Integration Testing](https://en.wikipedia.org/wiki/Integration_testing) in an automated [Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration) environment.

We understand that the same software quality pursued by the software industry must as well be pursued by academic projects to reduce [technical debt](https://en.wikipedia.org/wiki/Technical_debt) and avoid [software erosion](https://en.wikipedia.org/wiki/Software_rot), delivering industry-standard quality products.

We are strong adepts of open source philosophy. We started by effectively contributing to CloudSim and we have a developer in the top position of contributors from 2015 to 2016, and [such a position holds up to 2017](https://github.com/Cloudslab/cloudsim/graphs/contributors?from=2015-03-18&to=2017-01-30). However, since CloudSim is not highly compliant with these software design and engineering principles, practices and philosophies and our team has different views of how the framework should evolve, we decided to start CloudSim Plus as an independent fork. We also believe that source code needs to be curated, without meaning that will restrict contributions, as it is successfully proved by important projects like the [Linux Kernel](https://github.com/torvalds/linux).

Finally, enforcement of backward compatibility is a common concern in software development, mainly for public APIs such as those ones provided by a framework. However, such a concern slows down software evolution and we contrary understand that a cloud simulation framework is predominantly used for research purposes, even by industry. Cloud simulation scenarios are tightly coupled to a specific version of the simulation framework and after they produces the final results and the research goes on, new scenarios can be built using an updated version of the framework, without worrying about the older scenario. Accordingly, we are not afraid of breaking compatibility so that we can foster project advances.

## Architecture

CloudSim Plus is a Java Maven project that has a simpler and better module and package structures. The entire project is compounded of 4 modules that were re-organized to directly inherit from the parent project, allowing a researcher to quickly have an overview of the structure. Redundant and out-of-date modules such as "distribution" and "documentation" were removed since building distribution artifacts and documentation is already automated using Maven.

The figure below presents the current project architecture and its modules are described as follows. The highlighted modules are new in CloudSim Plus.

![](/assets/modules.png)

### Modules
CloudSim Plus API is the main module that contains the framework API. It is the only independent module that is required to build simulation scenarios. Since such a module is available at [Maven Central](http://cloudsimplus.org/docs/maven.html), there is no need to manually download the source code to build simulations using the framework. This module can just be [added as a maven dependency to your own project](http://cloudsimplus.org#maven) and you are ready to start building your simulation scenarios.

CloudSim Plus Examples provides the original CloudSim examples, with refactored, better organized code and updated to use the CloudSim Plus API. It also includes new examples for CloudSim Plus exclusive features. 

CloudSim Plus Testbeds modules provides some classes that implement simulation testbeds in a repeatable manner, allowing a researcher to collect valid scientific results, such as means and standard deviations, considering a specific confidence interval. They serve as examples on how to create broader testbed experiments.

CloudSim Plus Benchmarks module is used just internally to measure the overhead of some CloudSim Plus features.

## Exclusive Features

CloudSim Plus is a full-featured simulation framework that has introduced long-waited and exclusive features that are discussed below.

### Utilization easiness

1. It is far easier to use. A complete and easy-to-understand simulation scenario can be built in some few lines. Check the [Examples Section](#a-minimal-and-complete-simulation-example).

2. [Vertical VM Scaling](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/VerticalVmScalingExample.java) 
   that performs on-demand up and down allocation of VM resources such as Ram, Bandwidth and PEs \(CPUs\).
3. [Horizontal VM scaling](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/LoadBalancerByHorizontalVmScalingExample.java), allowing dynamic creation of VMs according to an overload condition. Such a condition is defined by a predicate that can check different VM resources usage such as CPU, RAM or BW.
4. [Parallel execution of simulations](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/ParallelSimulationsExample.java), allowing several simulations to be run simultaneously, in a isolated way, inside a multi-core computer.
5. [Listeners](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/listeners/) objects to enable simulation monitoring.
6. [Builders](/cloudsim-plus/src/main/java/org/cloudsimplus/builders/) to enable creating multiple simulation objects with same configuration.
7. TableBuilder objects that are used in all examples and enable printing simulation results in different formats such as ASCII Table, CSV or HTML. It shows simulation results in perfectly aligned tables, including data units and additional data. See the last line of the [BasicFirstExample](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/BasicFirstExample.java) constructor to see how it is easy to print results.
8. It is a strongly object-oriented framework that creates relationships among classes and allows chained calls such as `cloudlet.getVm().getHost().getDatacenter()`.
   And guess what? You don't even have to worry about `NullPointerException` when making such a chained call because CloudSim Plus uses the [Null Object Design Pattern](https://en.wikipedia.org/wiki/Null_Object_pattern) to avoid that.
9. [Delay creation of submitted Cloudlets](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/DynamicCloudletsArrival1.java), enabling simulation of dynamic arrival of tasks \(see issue \#11 for more details\).
10. [Allow dynamic creation of VMs and Cloudlets without requiring creation of Datacenter Brokers at runtime](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/DynamicCreationOfVmsAndCloudlets.java), enabling VMs to be created on-demand according to arrived cloudlets \(see issue \#43 for more details\).
11. Classes and interfaces to allow implementation of [heuristics](http://en.wikipedia.org/wiki/Heuristic) such as 
    [Tabu Search](http://en.wikipedia.org/wiki/Tabu_search), [Simulated Annealing](http://en.wikipedia.org/wiki/Simulated_annealing), 
    [Ant Colony Systems](http://en.wikipedia.org/wiki/Ant_colony_optimization_algorithms) and so on. See an [example using Simulated Annealing here](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/DatacenterBrokerHeuristicExample.java).
12. [Implementation of the Completely Fair Scheduler](/cloudsim-plus-examples/src/main/java/org/cloudsimplus/examples/LinuxCompletelyFairSchedulerExample.java) used in recent version of the Linux Kernel.
13. Completely re-designed and reusable Network module. Totally refactored network examples to make them clear and easy to change \(see issue \#49\).
14. Simpler constructors to instantiate simulation objects, making it less confusing to use the framework. It applies the Convention over Configuration principle \(CoC\) to ask just mandatory parameters when instantiating objects \(see issue \#30 for more details\).
15. Throughout documentation update, improvement and extension.
16. Improved class hierarchy, modules and package structure that is easier to understand and follows the Separation of Concerns principle \(SoC\).
17. As it is usual to extend framework classes to provide some specific behaviours for your simulations, you will find a totally refactored code that follows clean code programming, [SOLID](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)\), [Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern) and several other software engineering principles and practices. By this way, it will be far easier to understand the code and implement the feature you want.
18. Integration Tests to increase framework accuracy by testing entire simulation scenarios.
19. Updated to Java 8, making extensive use of [Lambda Expressions](http://www.oracle.com/webfolder/technetwork/tutorials/obe/java/Lambda-QuickStart/index.html) and [Streams API](http://www.oracle.com/technetwork/articles/java/ma14-java-se-8-streams-2177646.html) to improve efficiency and provide a cleaner and easier-to-maintain code.

## Usage Examples

## Current Issues (inherited from CloudSim)

## Conclusion and Future Work

## Acknowledge

* CAPES, FCT, IT, UBI, EU/Brazil Cloud Forum.



