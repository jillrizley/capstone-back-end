# Link Keeper #

## ERD ##
[ERD](https://www.draw.io/#LCapstone%20ERD)

## Explanations of the technologies used ##
- Express
- MongoDB
- Mongoose

## API Routes ##

| Verb   | URI Pattern            | Controller#Action      |
|--------|------------------------|------------------------|
| POST   | `/sign-up`             | `users#signup`         |
| POST   | `/sign-in`             | `users#signin`         |
| PATCH  | `/change-password/:id` | `users#changepw`       |
| DELETE | `/sign-out/:id`        | `users#signout`        |
| POST   | `/albums`              | `albums#post`          |
| GET    | `/albums`              | `albums#index`         |
| PATCH  | `/albums/id`           | `albums#update`        |
| DELETE | `/albums`              | `albums#destroy`       |
| GET    | `/photos/:id`          | `photos#show`          |
| POST   | `/photos`              | `photos#create`        |
| PATCH  | `/photos/:id`          | `photos#update`        |
| DELETE | `/photos/:id`          | `photos#destroy`       |

## Links ##
[Front End Deployed](https://jillrizley.github.io/capstone-front-end/)

[Front End Repo](https://github.com/jillrizley/capstone-front-end)

[This Repo](https://github.com/jillrizley/capstone-back-end)

[Deployed API](https://rocky-scrubland-71771.herokuapp.com/)

## A couple paragraphs about the general approach you took ##
I started this project thinking of it as a way to display a slideshow of images, but after some research into making that possible, I realized it was a bit out of the scope of possibility. I have instead created something that I think could be used in many ways. My app gives you the ability to make lists where you can name and save URLs, and when you access them it opens to a new window. This could be great for saving images, websites, recipes, studying tools, or even memes! Kind of like a bookmarks bar but you can sign-in and access your data from anywhere!

I began setting up the back end using Express and built out the user authorization followed by creating the controller and model for the albums that would hold the urls. I moved over to the front end and built out a sleek, easy to use site. I added the ability to add, delete and update both the albums and the links so that if any plans changed for the user, they could stay orgainzed accordingly. I think the usibilty of being able to open a window to a saved URL that you can orgaize youreself is much higher than my original plan to just be able to see a slideshow of images.

## Installation instructions for any dependencies ##
`npm install`

## Descriptions of any unsolved problems ##
I would really like for my app to be able to tell the difference between an image and a link to a website so that I could get a lightbox to open when images were clicked on, and a new browser window to open for links.
