---
title: "Funding DevOps for Success"
layout: post
author: bill_wheatley
date:   2024-09-05 00:00:00 -0500
tags: 
  - devops
  - funding
image:
#  thumbnail: /assets/mbpm-1.png
  path: /assets/empty-wide.png
---

# Funding DevOps for Success

Originally done as a talk at Red Hat Summit April 2020

*NOTE: Original video is not available anymore*

Updated and turned into a Blog in October 2024

## What are DevOps Teams

There are many definitions out there but the effective teams are defined by several characteristics:

* Cross functional teams
* The team delivers a product
* Long lived teams
* Agile practices

### Cross Functional Teams

Team members collectively must be able to take on any role to deliver Software. The idea is that is everyone on a team is invested in the same goal, will strategically plans, tactically execute and reflect of their success and failures together. By doing this everyone shares ownership in the outcome. This avoids the silo'ed single function team trap that often ends up in a rivalrous us-vs-them relationship.

Some of these roles are:

* Product Owner
* Project Managers
* Application architects
* Application developers
* Automation developers
* Business analysts
* Testers
* Operations
* Data Architects
* Security
* Data Scientists
* Agile coach

Keep in mind not every function needs to be delivered by a separate member and not every member needs to be fulltime on the team, some roles are not as utilized to the same degree as others. Some roles may have multiple team members depending on the demand. Also not all teams will need every role listed here, for example applications not developing AI models will not need data scientists.  Each products demands may change over time and from time to time adjustments to staffing levels should be made.

### Delivers a Product

Products over Projects.  

 The idea of projects grew out of construction, you build a building, once built you use if for what it was built, its maintained and remolded over time.  Projects are a single time effort and historically where done a a big chunk of work. Because Projects have a limited life the scope is generally fixed and focuses on business features. Often more ambitious projects end up growing in scope because the complexity was never well understood until the implementation team has to think through all the issues. Projects fit well with the waterfall methodology. In the last 10-15 years many folks have tried to use the agile methodology however they often can't adopt all the principals of agile because of the fixed scope and budget constraints. Projects are more prone to tech debt since the focus is on delivering business features and ending the project before it goes over budget and there is less longer term incentives since the team maybe disbanded after the project.

Products are thought of something that is generally long lived and delivers something tangible to your customers. Products end when the business no longer needs the product. Products scope is ever changing and responding to your customers needs as it developed. When used with Agile practices it is released in small chunks. Getting to production fast provides a feedback loop to help inform priorities for new work. It also involves getting revenue streams established earlier by doing this profitability can be established quicker and finical departments can understand the need to fund or discontinue funding easier than the project model.  Usually all types of work including reliability, performance, technical features and solving tech debt can be considered on a level playing field with business features. Given the longer timeline those deciding work priorities will think longer term and tech debt is often solved sooner rather then later.

### Long Lived Teams

The team lives on until the product is obsolete. By having a team dedicated you can continue to grow and expand the product to best serve your customers. As well as properly maintain security aspects and be able to address reliability and performance. Project based teams usually live just long enough to get the initial features out the door, security, performance, reliability do get some funding for the occasional maintenance tasks but generally not enough and customers can tell.  Keeping a long lived team also makes each unit this work easier since the team that knows the product and understand its history.

### Agile Practices

Almost everyone is Agile now, at least in name. A few things that set apart high performing agile teams from agile-ish teams:

* Delivers Code to production quickly and regularly. Demo day is live code!
* Teams are autonomous and can make their own decisions with some direction from senior leadership. Flexibility and pivoting are paramount.
* Cross Functional
* Have the ability and freedom to experiment
* Small slices of work
* Work is visible
* Learning is continuous whether: it be the latest tech, the business or the customers preferences. The ability to experiment is allowed, even if this means a failed experiment.

## Challenges

### Focus Only on Costs

The thinking is that the business is the business regardless of what the software does. So the way to optimize financials is to cut costs as much as possible.

Unfortunately in most cases customers have choices and the features, reliability, performance and ability to change and evolve over the years don't generally turn out good software with low budgets. It's not to say spend allot of money will guarantee success either.

The best way to look at it is through a profit center lens. What are you bringing in vs what is it costing you, track the margins, sometimes spending more is a worth wile investment to bring up revenue.  At other times you can be bloated and inefficient and there can be a big win to clean that up.

### Mythical Man Hours

TODO

### Failures are Always a Waste of Money

The thinking goes like this if I just didn't make this failure then I wouldn't have you know wasted a bunch of money or spent a bunch of time going down this road. If we had just done it right the first time we would have saved all this money.

The problem with that thinking is you spend a lot of time and thus money making sure you never go in the wrong direction. That also sometimes turns into hesitancy to change.  Its hard to make a mistake if you don't change right? Everyone eventually changes but slowing down reduces the chances of failure right?

In the days of ransomware patching is very necessary, Patching requires change. Also patching isn't just the operating system, its also platforms and code libraries. I can't tell you how much old [vulnerable log4j](https://www.cisa.gov/news-events/news/apache-log4j-vulnerability-guidance) I still see because the app team isn't considered as part of patching plan. Ransomware is very expensive if you get hit, even if you can recover without paying the ransom, of course it's infrequent so you don't hear much screaming from the budgeting office until its too late. Slowing down can cost you.

Also slowing down does delay any monetary benefits from the change to be realized over time this adds up to lost revenue.

Sometimes just making a mistake and learning from it is cheaper than trying to do everything in your power to avoid a mistake.Mistake avoidance can more costly than the just making the mistake and learning from it.

Keep in mind it's a learning process and that's true even for experienced developers, there's always something you could do better, technology is always growing and expanding so even with somebody experienced you know they still have a learning curve on what is the latest thing. Then there's the business side of it you're learning what your customers really want and that's actually a really huge thing that's overlooked.

### Only Business Features Make Money

The idea here is that customers are only here for business  features. This it's the business feature that will make money. More business features means more money so much of the funding goes not developers adding business features.

The problem with this type of funding is this ignores a couple other types of work, mainly:

* Performance and Reliability
* Tech Debt

#### Performance and Reliability

 It's one thing that you've functionally met requirements. It's another thing if the system is up.  Systems that are down, when they are needed, don't generally make as much money as systems that are up.
 
 Then there is the problem of performance if it's noticeable to the user they may become frustrated and look elsewhere at your competition that can build a better system.

 Then there is backend efficiency sometimes it may perform well for the user but you had to throw an unnecessary of hardware and infrastructure at it.  That increases operation costs that could be brought down by investing in development of more efficient code.

This is a place there Sight Reliability Engineers (SREs) could be a focus.  SREs are dedicated to partially the operational side along with the Performance and Reliability side of coding.  This model is an alternative for the traditionally separate app and ops teams. They have to live with the website operationally but are empowered to change it.

#### Tech Debt

Tech debt is when your developers deliver something but they know it could have been built better. There are several reasons why this happens:

* There's time constraints, there was a deadline they had to hit with business feature delivery so compromises has to be made in the technical implementation.
* There's a learning curve and once they got into it or after it came together a better way is envisioned. Sometimes it's a scale thing too, certain things are good at a small scale but don't scale up.
* Repeated patterns and defects that where not found in testing, usually these are non functional in nature and it took a production load or production scale to identify these.

Since these problems are hidden outside of developers and not the focus of funding they often are overlooked or their resolution is under funded. Sometime management misinterprets developers complaining about tech debt as perfectionism, perhaps the old saying *Perfect is the enemy of good* comes out.  If you are dealing with perfectionism that can often be costly and budgets are not unlimited but not all tech debt resolution requests are perfectionism or unreasonable.

What happens if you don't address tech debt?

* Slower to add new features overtime
* Scalability issues
* Performance and reliability may suffer
* Anti-patterns to deal with problematic implementations
* The cost to resolve goes up overtime.  Leading to future re-writes in the near future as the application changes that maybe seen as a lost cause sooner.

## What Makes Dev Ops Most Successful

### Culture

This is probably one of the most easily overlooked things. Some people take a mechanistic view of work. What sometimes gets lost is the human side of this and how well people work together.

Do people really want to be working for your company? Or maybe this is simply just a place where people come to collect a paycheck.

People who actually love what they do are more productive. They look forward to coming in and letting their creative juices flow. When you let people flourish, they actually want to be at work. They are not thinking about how they are gone to out of this place. Retaining talent is important for institutional knowledge.  

However if you're in a a penny pinching environment, that can suck the life out of people. Often they can't work on things they want to, tech debt tends to pile up and people get frustrated.

Now you don't necessarily need a foosball table to make people want to come to work. I'd actually probably argue that if you have a foosball table in the office and people are coming to work for that, it's being used as an escape from work they don't like. At the same time too don't get me wrong if you fund a happy hour every so often and there's a foosball table after work okay that can be good and that can be part of a team building exercise that helps people really want to be there

Anther thing when it comes to culture is how open people are which is related to how safe they feel. If you have a very negative culture people tend to be very closed and not open or honest about what it is they are working on or what exactly the problems. By hiding things they can avoid whatever negative wrath is being thrusted on them. Positive cultures tend to be more open as people are more helpful and not out to get you.

Investing in people is another area of culture, this helps attract and retain talent. Once people feel part of the environment they feel like they have ownership in things you will be amazed at how productive even the same person can be. This is a process that you're really selecting ultimately over time who's going to be the type of person who works there.

### Metrics

Metrics take out some of the guesswork in terms of what are the priorities how well things are going. It helps you understand how things are being used and how it changing overtime.

I want to be careful here because there are times when people can get to be overly objective. When people go overboard all they want to see a metric to do anything. Unfortunately you can't collect metrics about everything and you sometimes misinterpret metrics. Use your head and don't make everything completely objective, you still need some subjectivity.

Metrics can also be used to show improvements and get feedback on what funding has made the most impact.

### Value Stream Focused

Value stream focus is when you understand where the value of your work comes from. You align your systems to this value stream. Aligning the systems means to form a bounded context around the systems that deliver a subset of value. This often involves distributed systems that are accessed through APIs or communicate through eventing or messaging frameworks.

Value Stream mapping and Domain Driven Development (DDD) are  one way to figure out how to design systems to do this.

### Chargebacks at The Product Level

Chargebacks in a cooperate account context are when one part of company charges another part of the company operational expenses for their services.  Many times these are internal products or services for other parts of the business to consume.

For instance with my work at Red Hat I have helped customers setup chargebacks for using internal Openshift services.  There is a team that provides Openshift as a service to other teams that need to consume computing resources on Openshift.  They are metered and charge according to the measured usage of the platform. The more you use the more the consuming team pays the Openshift platform team. Its much like if a team paid a cloud provider like AWS to use their services and this is not something exclusive to computing resources and can be used for any part of running a business.

This works as a built in economic scaling mechanism for the Openshift platform team.  The more resources consumed the more money comes into their team to run services. On the flip side the application teams eat their own dog food in terms of the cost of their code.  If they write inefficient code that consumes tons of resources that eats up their budget.  This can incentivize an application team to prioritize enhancing the code to be more efficient.

Also as the app grows you can really asses its profitability by knowing what the operational costs are because of the accounting methodology.

Creating the proper value streams can also be chargeback boundaries.  Call an API in another bounded context, one bounded context pays the other for use of their service. Funds get apportioned according to real world costs vs guess work.

## Video

Check out a similar video I did on this post

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/eIURr662mDA?si=x5DWfkhEbryH4DqH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>