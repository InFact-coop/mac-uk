# MAC-UK Design Sprint: Who's Who?

## The Problem

Before our design workshop, we were given a brief about a charity needing to streamline the systems they used to organise their data and communicate. It turned out, however, that the people who worked at MAC-UK had slightly different ideas about what this meant to them. It was our task to come to a joint solution.

In our Design Workshop, we spent a few hours trying to figure out what was the main problem we wanted to solve.
![img_20171108_144446129](https://user-images.githubusercontent.com/23295662/32890412-948cad16-cac6-11e7-8eb1-8a4e55ad12d2.jpg)

![img_20171108_151015890](https://user-images.githubusercontent.com/23295662/32890415-9584fcfa-cac6-11e7-8270-e07ea5a86082.jpg)

We then considered possible solutions for each of the problem statements at hand, and came up with quick storyboards which we voted on. After analysing the different problems statements, it was decided that the key problem we wanted to solve was:
**How might we visualise the key contacts for each client?**

![img_20171108_170756596](https://user-images.githubusercontent.com/23295662/32890330-3df4adb4-cac6-11e7-93ef-f1658b46d692.jpg)


## Our Solution?

We created a prototype for an interactive app that will help MAC-UK staff to **visualise key information about the relationships between organisations**.

The app will allow MAC-UK staff to go to an organisation's "ecosystem" and have a clearer idea of what organisations and contacts are working on that area.


 **The aims of the solution**
 	* Being able to know what organisations are involved with MAC-UK
 	* Being able to visualise the key contacts of MAC-UK

## How it works

The **first view** reflects the different organisations which hold a contract with MAC-UK. Initially we had in mind a clickable map of London, however we altered this in light of the fact that not all these organisations operate on a local level. We decided to represent them as bubbles instead because they are colourful and less specific.

The **second view** is inspired by the social ecological diagrams Philippa showed us. Philippa explained that a lot of the theory behind MAC-UK's interventions come from this model. It was our desire to make an app that reflects this community focused view of mental health.

![social ecological model](https://upload.wikimedia.org/wikipedia/commons/9/9b/Bronfenbrenner%27s_Ecological_Theory_of_Development_%28English%29.jpg)

The "young person"/individual is in the middle. Surrounding them, each concentric circle represents a different category of organisation, "in orbit":

1. peers & family
2. schools, community & neighbourhood
3. health, housing, employability & safety
4. culture & politics

When clicking on each organisation you could go to the next page and see an organogram of the organisation's structure. Finally, when clicking on a chart in the organogram you will be directed to the contacts page where there will be information about the relevant person: this contact information could be edited, saved and linked to MAC-UK's google drive.

## Further Development
### User Testing
User testing allows you to get feedback from your primary users to check that the product being built fits their needs.

The three key points for testing are:
- Have a script which has tasks for them to complete
- Ask for people to give you a commentry of what they are doing, but don't response to them
- Document their response

Here are some useful resources to look at when completing your user testing sessions:
- [Googles Gurilla Testing Advice](https://www.youtube.com/watch?v=0YL0xoSmyZI&feature=youtu.be)
- [Script Guidance and Template](https://github.com/foundersandcoders/master-reference/blob/master/coursebook/weeks-10-12/user-testing.md#1-planning)

Recommended areas to user test:
- Therapists to find key organisations that are present in each borough.
- Therapists to be able to find specific client information easily.


### Next Sprint
If this design moves forward for a build sprint it is important to concentrate on key features that both solves the initital problem and takes implements feedback from user testing.

Recommended first features:
- Connect app with google contacts/ suite
- Dynamically create charts that represent Organisations' structure.

### Presentation Feedback

*A couple of ideas that came up during the presentation:*

### Page 1
- A login system so for finegrained control over the  level of information accessible
- Implementation of MAC-UK branding and colour schemes
- Node sizes proportional to oragisation size
### Page 2
- MAC-UK branding
- Node sizes proportional to oragisation size
- Detailing for colour coding/ ways of categorising each node (e.g. statutory/voluntary sector)
- Ways to make layout usable for mobile whilst accomodating info eg naming, centric circle sizes
- Allowing for unequal concentric circles (the "local" branch will usually accomodate more nodes)
- Names of organisations visible eg filter/ search functions, visible when circle is in focus
- fitting info in one view
- linking agencies that have relationships
### Page 3
- respresent different types of organisations eg potentially node based
- showing relationships between
### Page 4
- notes for organisation
- what info can automatically be updated
- google app syncing
- compose email link
- linking to trello
