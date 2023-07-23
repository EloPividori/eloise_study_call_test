# study_call_test

Bonne chance, si tu as la moindre question n'hésites pas à me contacter par mail julien.bouland@studycall.fr # study_call_test


# README

 Hello Julien,

I wanted to give you a bit of feedback regarding my approach to the test.

## models

I hesitated to create a many to many relationship for the tags and messages (using a polymorphic table), but as specified in the test instructions, a message can be associated with Urgent, Secret OR Rigolo.

I therefore created a tag model and a message model with a one to many relationship - a tag has many messages and a message belongs to a tag.

## routes

I considered using the friendly_id gem but decided to set the tags/:name/messages route directly in the routes file

## translation

I created a service file to implement the translation in the message view file
