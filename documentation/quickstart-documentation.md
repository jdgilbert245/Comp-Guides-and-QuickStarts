# Writing Documentation
From https://docs.divio.com/documentation-system/. 

There is a secret that needs to be understood in order to write good software documentation: there isn’t one thing called documentation, there are four.

They are: tutorials, how-to guides, technical reference and explanation. They represent four different purposes or functions, and require four different approaches to their creation. Understanding the implications of this will help improve most documentation - often immensely.

## Tutorials
Tutorials are lessons that take the reader by the hand through a series of steps to complete a project of some kind. They are what your project needs in order to show a beginner that they can achieve something with it.

They are wholly learning-oriented, and specifically, they are oriented towards learning how rather than learning what.

You are the teacher, and you are responsible for what the student will do. Under your instruction, the student will execute a series of actions to achieve some end.

The end and the actions are up to you, but deciding what they should be can be hard work. The end has to be meaningful, but also achievable for a complete beginner.

Tutorials need to be useful for the beginner, easy to follow, meaningful and extremely robust, and kept up-to-date. You might well find that writing and maintaining your tutorials can occupy as much time and energy as the other three parts put together.

### How to write good tutorials
#### Allow the user to learn by doing
In your software tutorial, your learner needs to do things. The different things that they do while following your tutorial need to cover a wide range of tools and operations, building up from the simplest ones at the start to more complex ones.

#### Get the user started
It’s perfectly acceptable if your beginner’s first steps are hand-held baby steps. It’s also perfectly acceptable if what you get the beginner to do is not the way an experienced person would, or even if it’s not the ‘correct’ way - a tutorial for beginners is not the same thing as a manual for best practice. The point of a tutorial is to get your learner started on their journey, not to get them to a final destination.

#### Make sure the tutorial works
what you ask the beginner to do must work
 
#### Ensure the user sees results immediately
Everything the learner does should accomplish something comprehensible, however small. If your student has to do strange and incomprehensible things for two pages before they even see a result, that’s much too long. The effect of every action should be visible and evident as soon as possible, and the connection to the action should be clear.

#### Focus on concrete steps, not abstract concepts
Tutorials need to be concrete, built around specific, particular actions and outcomes.

The temptation to introduce abstraction is huge; it is after all how most computing derives its power. But all learning proceeds from the particular and concrete to the general and abstract, and asking the learner to appreciate levels of abstraction before they have even had a chance to grasp the concrete is poor teaching.

#### Provide the minimum necessary explanation
Don’t explain anything the learner doesn’t need to know in order to complete the tutorial. Extended discussion is important - just not in a tutorial. In a tutorial, it is an obstruction and a distraction. Only the bare minimum is appropriate. Instead, link to explanations elsewhere in the documentation.

Your tutorial needs to be focused on the task in hand. Maybe the command you’re introducing has many other options, or maybe there are different ways to access a certain API. It doesn’t matter: right now, your learner does not need to know about those in order to make progress.

## How To Guides
How-to guides take the reader through the steps required to solve a real-world problem. They are wholly goal-oriented.

How-to guides are wholly distinct from tutorials and must not be confused with them:

A tutorial is what you decide a beginner needs to know.
A how-to guide is an answer to a question that only a user with some experience could even formulate.

### How to write good how-to guides
#### Provide a series of steps
How-to guides must contain a list of steps, that need to be followed in order (just like tutorials do). You don’t have to start at the very beginning, just at a reasonable starting point. How-to guides should be reliable, but they don’t need to have the cast-iron repeatability of a tutorial.

#### Focus on results
How-to guides must focus on achieving a practical goal. Anything else is a distraction. As in tutorials, detailed explanations are out of place here.

#### Solve a particular problem
A how-to guide must address a specific question or problem: How do I …?

This is one way in which how-to guides are distinct from tutorials: when it comes to a how-to guide, the reader can be assumed to know what they should achieve, but don’t yet know how - whereas in the tutorial, you are responsible for deciding what things the reader needs to know about.

#### Don't explain concepts
A how-to guide should not explain things. It’s not the place for discussions of that kind; they will simply get in the way of the action. If explanations are important, link to them.

#### Leave things out
Practical usability is more valuable than completeness. Tutorials need to be complete, end-to-end guides; how-to guides do not. They can start and end where it seems appropriate to you. 



## Technical References
Reference guides are technical descriptions of the machinery and how to operate it. Reference guides have one job only: to describe. They are code-determined, because ultimately that's what they describe: key classes, functions, APIs, and so they should list things like functions, fields, attributes and methods, and set out how to use them.

### How to write good reference guides
#### Structure the documentation around the code
Give reference documentation the same structure as the codebase, so that the user can navigate both the code and the documentation for it at the same time. This will also help the maintainers see where reference documentation is missing or needs to be updated.

#### Do nothing but describe
The only job of technical reference is to describe, as clearly and completely as possible. Anything else (explanation, discussion, instruction, speculation, opinion) is not only a distraction, but will make it harder to use and maintain. Provide examples to illustrate the description when appropriate.

Avoid the temptation to use reference material to instruct in how to achieve things, beyond the basic scope of using the software, and don’t allow explanations of concepts or discussions of topics to develop. Instead, link to how-to guides, explanation and introductory tutorials as appropriate.

#### Be accurate
These descriptions must be accurate and kept up-to-date. Any discrepancy between the machinery and your description of it will inevitably lead a user astray.

## Explanations
Explanation, or discussions, clarify and illuminate a particular topic. They broaden the documentation’s coverage of a topic.

They are understanding-oriented.

### How to write a good explanation
#### Provide context
Explanations are the place for background and context - for example, Web forms and how they are handled in Django, or Search in django CMS.

They can also explain why things are so - design decisions, historical reasons, technical constraints.

#### Discuss alternatives and opinions
Explanation can consider alternatives, or multiple different approaches to the same question. For example, in an article on Django deployment, it would be appropriate to consider and evaluate different web server options.

Discussions can even consider and weigh up contrary opinions - for example, whether test modules should be in a package directory, or not.

#### Don't instruct, or provide technical reference
Explanation should do things that the other parts of the documentation do not. It’s not the place of an explanation to instruct the user in how to do something. Nor should it provide technical description. These functions of documentation are already taken care of in other sections.
