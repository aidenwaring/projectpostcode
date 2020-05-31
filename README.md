# Aiden Waring - CAB012027
# T2A2 - Rails Application

---

## R7 - Source Control Repository

While building this marketplace app, I drew upon my experiences using other popular two-sided marketplace applications such as Uber, Airbnb, though most specifically my time with Instagram inspired my work.

After enrolling with Coder Academy, my social media consumption shifted more and more towards following software development content. 

A problem that I experienced with Instagram that I aim to solve by building this app was that there was little-to-no strictly coding content such as photos or pages that shared photos of code snippets.

## R8 - Why is it a problem that needs solving?

I believe that this is a problem that needs solving. Using Instagram to find photos by following hashtags such as #programming, #softwaredeveloper and #softwareengineer provide no image content that relate directly to these subjects. I believe this is a space left empty that can be fixed by an application such as the one being developed.

## R9 - A link (URL) to your deployed app (i.e. website)

Please find a link to the deployed site here:
[https://postcodeaidenwaring.herokuapp.com/](https://postcodeaidenwaring.herokuapp.com/)
Alt Img:
[/docs/deployedsite.png](/docs/deployedsite.png)

## R10 - GitHub Repo

My GitHub repository for the project can be found at the link below:
[https://github.com/aidenwaring/projectpostcode](https://github.com/aidenwaring/projectpostcode)

## R11 - Description of your marketplace app (website), including:
- Purpose
- Functionality / features
- Sitemap
- Screenshots
- Target audience
- Tech stack (e.g. html, css, deployment platform, etc)

## Purpose

The purpose of the application was to provide developers with a social-media-like platform to post code snippets. These snippets are encouraged to be of the uploaders own work, or if not, providing sources to the creator.

This program is called PostCode. PostCode aims to provide a platform for viewing and sharing code for teaching and inspiring other software developers. A donation or contribution feature is also planned as a way to "give thanks" to other developers that have helped others.

## Functionality

The functionality of the app is quite simple: users have the ability to create accounts to log in to view content. These users can then  view all other posts of code snippet images made by other users. Users may also post their own images, providing a title, description of the code and the code snippet image. Planned functionality incldues post likes, post comments and the before mentioned contribution system.

## Sitemap

* Splash Page
            -> Sign Up
            -> Sign In
* Dashboard
            -> View Posts
* My Posts
            -> New Post
            -> Edit, Update, Delete Posts
* Sign Out


## Screenshots

Splash Page
![/docs/deployedsite.png](/docs/deployedsite.png)

Dashboard
![/docs/dashboard.png](/docs/dashboard.png)

My Posts
![/docs/myposts.png](/docs/myposts.png)

Login
![/docs/login.png](/docs/login.png)

Sign Up
![/docs/signup.png](/docs/signup.png)

## Target Audience

Website was designed with the target audience in mind. The application is aimed at anyone with an interest in software development: whether they be a student, a junior developer or a CIO - for these people to view educational and inspirational code snippets.

## Tech Stack

The tech stack used is as follows:

* Ruby
* Ruby on Rails
* HTML
* CSS
* JavaScript
* Bootstrap
* Cloudinary
* Heroku

## R12 - User Stories

User stories used to help direct the development of the application were recorded and stored on a public Trello board for the PostCode application. Click the below link to see more information:
[https://trello.com/b/xxK5OVDj/postcode-simple-code-snippet-social-media](https://trello.com/b/xxK5OVDj/postcode-simple-code-snippet-social-media)

Alt Img:
![/docs/trello.png](/docs/trello.png)

## R13 - Wireframes

Click the link below to see more information:
[]()

## R14 - Entity Relationship Diagram [ERD]

Please click the link below to see the ERD for the application:
[https://app.lucidchart.com/invitations/accept/555dfc48-44a3-4acc-8e6a-0185692cd869](https://app.lucidchart.com/invitations/accept/555dfc48-44a3-4acc-8e6a-0185692cd869)

Alt Img:
![/docs/erd.png](/docs/erd.png)

## R15 - Explain the different high-level components (abstractions) in your app

## R16 - Detail any third party services that your app will use

Third party services used within the application include:

* Cloudinary
Cloudinary was used as an image hosting provider for code snippets.

* Heroku
Heroku was used as the primary hosting provider for the rails application.

## R17 - Describe your projects models in terms of the relationships (active record associations) they have with each other & R18 - Discuss the database relations to be implemented in your application

Account:
``rolify
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
``

Post:
``  belongs_to :account
  has_one_attached :code_image
  ``

  Role:
``has_and_belongs_to_many :accounts, :join_table => :accounts_roles``

``belongs_to :resource,
           :polymorphic => true,
           :optional => true``


``validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true``

``scopify``

## R19 - Provide your database schema design

``ActiveRecord::Schema.define(version: 2020_05_20_034647) do

  # These are extensions that must be enabled in order to support this database
  ``enable_extension "plpgsql"``

  ``create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "display_name"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end``

  ``create_table "accounts_roles", id: false, force: :cascade do |t|
    t.integer "account_id"
    t.integer "role_id"
    t.index ["account_id", "role_id"], name: "index_accounts_roles_on_account_id_and_role_id"
    t.index ["account_id"], name: "index_accounts_roles_on_account_id"
    t.index ["role_id"], name: "index_accounts_roles_on_role_id"
  end``

  ``create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end``

  ``create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end``

  ``create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_posts_on_account_id"
  end``

  ``create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end``

  ``add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "posts", "accounts"
end``

## R20 - Describe the way tasks are allocated and tracked in your project

Tasks were allocated and tracked using the Trello board posted earlier. Due dates and ideal deadlines were set using the calendar addon and by adding due date fields to each board.

## Terminal Application and Code Overview in Slide Deck

Please find the slide deck featured in the presentation at the link below:

[/ppt/aidenwaring_slidedeck](/ppt/aidenwaring_slidedeck.pdf)