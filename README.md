# Ruby on Rails Challenge

## 👩‍💻 Proyect Overview and Info

This is a working opportunity API for companies to post their jobs and for people to postulates to that job. Then the company may accept or reget that postulation.
You can sing_up as company or person.
The app have three models User(company_role or person_role), Post and Postulation, each Post will have many postulations in which the company will handle the status of that postulation.
The company will have a dashboard where they can see all their posts and postulations.
The persons will have an index where they can see all the posts and a postulations index where they can see al their postulations.

## Testing

In this app we use Minitest, we test the model controllers and jobs of each model.

## Gems
- rails
- devise
- devise-jwt -> handle the tokens for user authentication.
- rack-cors -> provides support for Cross-Origin Resource Sharing (CORS)
- pundit -> robust and scalable authorization system.
- jbuilder

## Muchas gracias por la oportunidad 💪
