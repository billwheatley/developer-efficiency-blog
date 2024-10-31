---
title: "Funding DevOps for Success"
layout: post
author: bill_wheatley
date:   2024-10-30 00:00:00 -0500
tags: 
  - devops
  - funding
  - metrics
  - value streams
image:
  thumbnail: /assets/funding-devops-banner.jpg
  path: /assets/funding-devops-banner.jpg
---

# Funding DevOps for Success

*Originally done as a talk at Red Hat Summit, April 2020*

*Updated and turned into a Blog in October 2024*

## What are DevOps Teams

There are many definitions out there but the effective teams are defined by several characteristics:

* Cross functional teams  
* Product Delivery  
* Long lived teams  
* Agile practices

### Cross Functional Teams

Team members collectively must be able to take on most common roles to deliver Software. The idea is that everyone on a team is invested in the same goal, will strategically plan, tactically execute and reflect on their success and failures together. By doing this everyone shares ownership in the outcome. This avoids the siloed single function team trap that often ends up in a rivalrous us-vs-them relationship.

Some of these roles are:

* Product Owner  
* Project Managers  
* Scrum Masters  
* Application Architects  
* Application Developers  
* Automation Developers  
* Business Analysts  
* Testers  
* Operations  
* Site Reliability Engineers (SRE)  
* Data Architects  
* Security  
* Data Scientists  
* Agile Coach

Keep in mind not every function needs to be delivered by a separate member and not every member needs to be full time on the team, some roles are not as utilized to the same degree as others. Some roles may have multiple team members depending on the demand. Also not all teams will need every role listed here, for example applications not developing AI models will not need data scientists.  Each product's demands may change over time and from time to time adjustments to staffing levels should be made.

### Product Delivery

Products over Projects.

The idea of projects grew out of construction, you build a building, once built you use if for what it was built, its maintained and remodeled over time.  Projects are a single time effort and historically were done as a big chunk of work. Because Projects have a limited life the scope is generally fixed and focuses on business features. Often more ambitious projects end up growing in scope because the complexity was never well understood until the implementation team has to think through all the issues. Projects fit well with the waterfall methodology. In the last 10-15 years many folks have tried to use the agile methodology however they often can't adopt all the principles of agile because of the fixed scope and budget constraints. Projects are more prone to tech debt since the focus is on delivering business features and ending the project before it goes over budget and there are less longer term incentives since the team may be disbanded after the project.

Products are thought of as something that is generally long lived and delivers something tangible to your customers. Products end when the business no longer needs the product. Product scope is ever changing and responding to your customers needs as it develops. When used with Agile practices it is released in small chunks. Getting to production fast provides a feedback loop to help inform priorities for new work. It also involves getting revenue streams established earlier by doing this profitability can be established quicker and financial departments can understand the need to fund or discontinue funding easier than the project model.  Usually all types of work including reliability, performance, technical features and solving tech debt can be considered on a level playing field with business features. Given the longer timeline those deciding work priorities will think longer term and tech debt is often solved sooner rather than later.

### Long Lived Teams

The team lives on until the product is obsolete. By having a team dedicated you can continue to grow and expand the product to best serve your customers. As well as properly maintaining security aspects and being able to address reliability and performance. Project based teams usually live just long enough to get the initial features out the door, however: security, performance, reliability do get some funding for the occasional maintenance tasks but generally not enough and customers can tell.  Keeping a long lived team also makes work easier since the team that knows the product and understands its history.

### Agile Practices

Almost everyone is Agile now, at least in name. A few things that set apart high performing agile teams from agile-ish teams:

* Delivers code to production quickly and regularly. Demo day is live code\!  
* Teams are autonomous and can make their own decisions with some direction from senior leadership. Flexibility and pivoting are paramount.  
* Cross Functional  
* Have the ability and freedom to experiment  
* Small slices of work  
* Work is visible  
* Learning is continuous whether: it be the latest tech, the business or the customers preferences. The ability to experiment is allowed, even if this means a failed experiment.

## Challenges

### Focus Only on Costs

The thinking is that the business is the business regardless of what the software does. So the way to optimize finances is to cut costs as much as possible.

In most cases customers have choices and the: features, reliability, performance and ability to change and evolve over the years don't generally turn out good software with low budgets. It's not to say spending a lot of money will guarantee success either.

The best way to look at it is through a profit center lens. What are you bringing in vs what is it costing you, track the margins, sometimes spending more is a worthwhile investment to bring up revenue.  At other times you can be bloated and inefficient and there can be a big win to clean that up.

### Mythical Man Hours

One of the pervasive problems is sometimes dubbed the "Mythical Man Hour" ; this is when a task or body of work is reduced to an estimate of hours that can be completed by anyone (or at least someone within a given role).  These estimates often turn into commitments, which turn into expectations that are expected to be met. Friction ensues when things take too long. This has a direct relationship to funding since time is money, employees expect to work for a fixed number of hours and for a fixed salary.  Time overruns turn into budget overruns.

Before I talk about what is wrong with this line of thinking, let's talk about what is right?  Businesses do need some idea of how much something will cost in order to decide if something is worth investing in. Just winging it is very risky. Much of the cost is labor and an hours estimate is very useful in that calculation.

The problem is with saying it will take X hours is several fold:

* **Not everyone works at the same pace at all times.** It takes a mechanistic view of people. It assumes any person with a given skill set (ex: developer) can be plugged in and can complete the same task in the same amount of time.  This is often wrong for several reason:  

  * Not everyone has the same level of industry experience.
  * Not everyone has the same experience working within the company culture or what has been built at this specific company.
  * Not everyone is as motivated as the person sitting next to them, there are many reasons for this.
  * Some people get distracted easier or are spread thinner and have context switching happening. For example: 15 min heads down, an interruption comes in, then another 30 min heads down, another interruption comes, followed by 15 min of work is a total of 1 hrs worth of work but it will likely be much less productive as 1 hr of uninterrupted work.

* **Infinite divisibility of labor doesn't work:** if there is 1000 hrs of developer work it would seem like 2 developers could get that done in 500 hrs each.  It would also seem like 10 developers could get the work done in 100 hrs each. Likewise 100 developers can get it done in 10 hrs each, right? The simple divisibility mindset has several problems:  

  * Some things require waiting on things that are not labor related.  The joke is: *if 1 women can make 1 baby in 9 months, then 9 women can make 1 baby in 1 month*. If the team is waiting on something and goes idol waiting, the more people you have, the more wasted hours.  Planning doesn't always mitigate this, surprises happen.  
  * Dependencies \- in order to start working on one thing a prerequisite within the team may have to be met, the more bodies you have the more moving parts and some may have to wait, burning hours.  
  * "Too many cooks in the kitchen" vs "not enough cooks in the kitchen" If you have too few people, sometimes you don't get the best results because there are not enough people to bounce ideas off of. On the other hand too many people and you have many competing visions and you may spend a bunch hashing out the best ideas and sometimes that is not always worth the extra time.  
  * Learning the business domain and the technology as it's implemented and how it's evolving throughout the project is something everyone will have to go through and it's more of a constant per person cost.

How best to approach this:

* Don't treat estimates as something you have to hit, this is not construction, that model (waterfall) doesn't work well with this type of work.  
* Embrace the agile mindset: have a vision so you have a direction but be flexible as to how it turns out.  Remember a change in direction is usually for the better since you know more than when you started.  
* Deliver in small increments so you can benefit sooner rather than later from what you have done and most importantly get real world feedback.  This will also get you out of the all-or-nothing mindset or rigidness of the original plan.  
* Measure how far you have come with what has been delivered.  
* Estimate and re-estimate small future changes based on what you know. Small changes are usually more accurate. Decide what works best now.  
* Remember it's a journey not a destination.

### Failures are Always a Waste of Money

The thinking goes like this: if I just didn't make this failure then I wouldn't have wasted a bunch of money or spent a bunch of time going down this road. If we had just done it right the first time we would have saved all this money.

The problem with that thinking is you spend a lot of time and thus money making sure you never go in the wrong direction. That also sometimes turns into hesitancy to change.  It's hard to make a mistake if you don't change anything, right? Everyone eventually changes but slowing down reduces the chances of failure, right?

Slowing down change can cost you in the days of ransomware. Patching is very necessary, Patching requires change. Also patching isn't just the operating system, it's also platforms and code libraries. I can't tell you how much old [vulnerable log4j](https://www.cisa.gov/news-events/news/apache-log4j-vulnerability-guidance) I still see because the app team isn't considered as part of the patching plan. Ransomware is very expensive if you get hit, even if you can recover without paying the ransom, of course it's infrequent so you don't hear much screaming from the budgeting office until it's too late.

Also slowing down does delay any monetary benefits from the change to be realized over time this adds up to lost revenue.

Sometimes just making a mistake and learning from it is cheaper than trying to do everything in your power to avoid a mistake.Mistake avoidance can be more costly than just making the mistake and learning from it.

Keep in mind it's a learning process and that's true even for experienced developers, there's always something you could do better, technology is always growing and expanding so even with somebody experienced you know they still have a learning curve on what is the latest thing. Then there's the business side of it: you're learning what your customers really want and that's actually a really huge thing that's overlooked.

### Only Business Features Make Money

The idea here is that customers are only here for business features. More business features means more money, thus much of the funding goes to developers adding business features.

The problem with this type of funding is this ignores a couple other types of work, mainly:

* Performance and Reliability  
* Tech Debt

#### Performance and Reliability

It's one thing that you've functionally met requirements. It's another thing if the system is up.  Systems that are down, when they are needed, don't generally make as much money as systems that are up.

Then there is the problem of performance if it's noticeable to the user they may become frustrated and look elsewhere at your competition that can build a better system.

Then there is backend efficiency. Sometimes it may perform well for the user but you have to throw unnecessary hardware and infrastructure at it.  That increases operation costs that could be brought down by investing in development of more efficient code.

This is a place where Site Reliability Engineers (SREs) could be a solution.  SREs are dedicated to partially the operational side along with the Performance and Reliability side of coding.  This model is an alternative for the traditionally separate app and ops teams. They have to live with the website operationally but are empowered and knowledgeable as to how to change it.

#### Tech Debt

Tech debt is when your developers deliver something but they know it could have been built better. There are several reasons why this happens:

* There's time constraints, there was a deadline they had to hit with business feature delivery so compromises had to be made in the technical implementation.  
* There's a learning curve and once they get into it or after it comes together a better way is envisioned.
* Scale: certain things are good at a small scale but don't scale up well.  
* Repeated patterns and defects that were not found in testing: usually these are non functional in nature and it took a production load or production scale to identify these.

Since these problems are hidden outside of the development team and not the focus of funding they often are overlooked or their resolution is under funded. Sometime management misinterprets developers complaining about tech debt as perfectionism.  If you are dealing with perfectionism that can often be costly and budgets are not unlimited. However not all tech debt resolution requests are based on a desire for perfectionism and often are not unreasonable.

What happens if you don't address tech debt?

* Slower to add new features overtime  
* Scalability issues  
* Performance and reliability may suffer  
* Anti-patterns to deal with problematic implementations: these slow down development and create harder to interpret code for new members of the team  
* The cost to resolve goes up overtime.  Leading to future re-writes in the near future as the application changes that may be seen as a lost cause sooner.

## What Makes DevOps Most Successful

### Culture

This is probably one of the most easily overlooked things. Some people take a mechanistic view of work. What sometimes gets lost is the human side of this and how well people work together.

Do people really want to be working for your company? Or maybe this is simply just a place where people come to collect a paycheck.

People who actually love what they do are more productive. They look forward to coming in and letting their creative juices flow. When you let people flourish, they actually want to be at work. They are not thinking about how they are going to get out of this place. Retaining talent is important for institutional knowledge.

However if you're in a penny pinching environment, that can suck the life out of people. Often they can't work on things they want to, tech debt tends to pile up and people get frustrated.

Now you don't necessarily need a foosball table to make people want to come to work. I'd actually probably argue that if you have a foosball table in the office and people are coming to work for that, it's being used as an escape from work they don't like. At the same time too don't get me wrong if you fund a happy hour every so often and there's a foosball table after work okay that can be good and that can be part of a team building exercise that helps people really want to be there.

Another thing when it comes to culture is how open people are which is related to how safe they feel. If you have a very negative culture people tend to be very closed and not open or honest about what it is they are working on or what exactly the problems are. By hiding things they can avoid whatever negative wrath is being thrusted on them. Positive cultures tend to be more open as people are more helpful and not out to get you.

Investing in people is another area of culture, this helps attract and retain talent. Once people feel part of the environment they feel like they have ownership in things you will be amazed at how productive even the same person can be. This is a process that you're really selecting ultimately over time who's going to be the type of person who works there.

### Metrics

Metrics take out some of the guesswork in terms of what are the priorities and how well things are going. It helps you understand how things are being used and how it changes overtime.

I want to be careful here because there are times when people can get overly objective. When people go overboard all they want to see is a metric to do anything. Unfortunately you can't collect metrics about everything and you sometimes misinterpret metrics. Use your head and don't make everything completely objective, you still need some subjectivity.

Metrics can also be used to show improvements and get feedback on what funding has made the most impact.

### Value Stream Focused

Value stream focus is when you understand where the value of your work comes from. You align your systems to this value stream. Aligning the systems means to form a bounded context around the systems that deliver a subset of value. This often involves distributed systems that are accessed through APIs or communicate through eventing or messaging frameworks.

Value Stream mapping and Domain Driven Development (DDD) are one way to figure out how to design systems to do this.

### Chargebacks at The Product Level

Chargebacks in a corporate account context are when one part of a company charges another part of the company operational expenses for their services.  Many times these are internal products or services for other parts of the business to consume.

For instance with my work at Red Hat I have helped customers set up chargebacks for using internal Openshift services.  There is a team that provides Openshift as a service to other teams that need to consume computing resources on Openshift.  They are metered and charge according to the measured usage of the platform. The more you use the more the consuming team pays the Openshift platform team. It's much like if a team paid a cloud provider like AWS to use their services.

This works as a built in economic scaling mechanism for the Openshift platform team.  The more resources consumed the more money comes into their team to run services. On the flip side the application teams eat their own dog food in terms of the cost of their code.  If they write inefficient code that consumes tons of resources, that eats up their budget.  This can incentivize an application team to prioritize enhancing the code to be more efficient.

Also as the app grows you can really assess its profitability by knowing what the operational costs are because of the accounting methodology.

Creating the proper value streams can also be chargeback boundaries.  Call an API in another bounded context, one bounded context pays the other for use of their service. Funds get apportioned according to real world costs vs guess work.

## Video

The original video I did for Red Hat Summit is not available anymore. I recently re-recorded that talk here, it's similar to the written post.  

<div>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/eIURr662mDA?si=x5DWfkhEbryH4DqH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>