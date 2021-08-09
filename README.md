# Ruby on Rails Challenge

## 👩‍💻 Proyect Overview and Info

This is a working opportunity API for companies to post their jobs and for people to postulates to that job. Then the company may accept or reget that postulation.
You can sing_up as company or person.
The app have three models User(company_role or person_role), Post and Postulation, each Post will have many postulations in which the company will handle the status of that postulation.
The company will have a dashboard where they can see all their posts and postulations.
The persons will have an index where they can see all the posts and a postulations index where they can see al their postulations.

## Testing

In this app we use Minitest, we test the model controllers and policies.
```
rails test
```
For testing the API response status, I used [link to postman](https://www.postman.com/)

## Usage

You can use and test the API form [link to postman](https://www.postman.com/)
or from the terminal you can make curl comands

### For singup
```
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "user@test.com", "password": "12345678" } }' http://localhost:3000/users
```

### For login

```
curl -XPOST -i -H "Content-Type: application/json" -d '{ "user": { "email": "user@test.com", "password": "12345678" } }' http://localhost:3000/users/sign_in
```
The -i flag is very important. It prints the response headers, which contain the JWT token for authorizing future requests

### For signout

```
curl -XDELETE -H "Authorization: Bearer {The Authorization token that prints when you run the login with the -i flag}" -H "Content-Type: application/json" http://localhost:3000/users/sign_out
```

## Gems
- rails
- devise
- devise-jwt -> handle the tokens for user authentication.
- rack-cors -> provides support for Cross-Origin Resource Sharing (CORS)
- pundit -> robust and scalable authorization system.
- jbuilder

## Muchas gracias por la oportunidad 💪
