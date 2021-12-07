# Airbnb MVP

 irbnb is an online marketplace that connects people who want to rent out their homes with people who are looking for accommodations in that locale , this portal  has multiaccess for people who are looking for accommodations and people who want to rent out their homes Through out the portal you can allocate your desired home and select the right price for you. this projoct was generated with [Rails 6](https://github.com/rails/rails) version 6.1.4.1 and Bulma CSS framework  [Tailwind](https://github.com/tailwindlabs/tailwindcss).

# featuers
- Two registration models for users and hosters
- Sign-up,Sign-in,Forget Password Devise gem
- Dynamic filters
- checkout
- AWS S3 (object storage through a web service interface, scalable storage infrastructure)
- Integration with stripe Payment
- hoster Dashboard  
- hoster calendar  

# Deployment
- Ruby on Rails powers the REST API and other web pages
- Stripe API access
- AWS API access

# Accounts You Will Need
Get the accounts you will need before deploying the application.

Email
Devise provides a “Forgot Password?” feature that resets a password and sends instructions to the user. You’ll need an email service provider to send email from the application. You can use Gmail during development. You can get a free Gmail account if you don’t already have one. For production, Gmail is not robust. Use transactional email services, such as Mandrill, to send email in production. See the article Send Email with Rails for more information.

AWS S3 
Open https://portal.aws.amazon.com/billing/signup.
Follow the online instructions.
Part of the sign-up procedure involves receiving a phone call and entering a verification code on the phone keypad.

Stripe
A Stripe account is required. Before you start, go to the Stripe website and set up an account. You don’t need a credit card merchant account or payment gateway. There’s no approval process to delay getting started.

Merchant Account
Your business will need a merchant account in order to accept credit card payments. If you already have a merchant account, you can use it with Stripe. Stripe provides a merchant account as part of its service, so you don’t need to obtain one.
<img width="1436" alt="Screen Shot 2021-12-07 at 10 00 40 PM" src="https://user-images.githubusercontent.com/57042884/145093406-bca0682a-b326-45d9-8740-605d445a0a08.png">

<img width="1437" alt="Screen Shot 2021-12-07 at 10 00 55 PM" src="https://user-images.githubusercontent.com/57042884/145093428-2848d10f-0f66-4b31-8937-e956ae73aa6c.png">

<img width="1437" alt="Screen Shot 2021-12-07 at 10 01 10 PM" src="https://user-images.githubusercontent.com/57042884/145093455-2ddedde3-195b-4d75-b6bd-fe51af426417.png">

<img width="1435" alt="Screen Shot 2021-12-07 at 10 03 47 PM" src="https://user-images.githubusercontent.com/57042884/145093484-99c570e1-e00c-404c-82bf-e9732b99d9e9.png">

<img width="1437" alt="Screen Shot 2021-12-07 at 10 04 21 PM" src="https://user-images.githubusercontent.com/57042884/145093514-36dd5d61-cc43-4237-bf97-07db1c211763.png">

<img width="1439" alt="Screen Shot 2021-12-07 at 10 06 47 PM" src="https://user-images.githubusercontent.com/57042884/145093537-bb3cf0cf-f8fa-4496-8adf-d095c297c2df.png">

<img width="1440" alt="Screen Shot 2021-12-07 at 10 07 33 PM" src="https://user-images.githubusercontent.com/57042884/145093543-21aa6647-ba12-487a-9909-7c7059e6e743.png">

<img width="1438" alt="Screen Shot 2021-12-07 at 10 31 00 PM" src="https://user-images.githubusercontent.com/57042884/145094014-11f8f6bf-228b-4b28-b658-fb8405bf3441.png">

# adding an accommodations

<img width="1438" alt="Screen Shot 2021-12-07 at 10 08 22 PM" src="https://user-images.githubusercontent.com/57042884/145093597-dd174b73-219d-43f9-bc4e-d2eb882f9cec.png">

<img width="1436" alt="Screen Shot 2021-12-07 at 10 10 54 PM" src="https://user-images.githubusercontent.com/57042884/145093607-d6867788-98c0-4539-b007-e2f0243b16d5.png">

<img width="1434" alt="Screen Shot 2021-12-07 at 10 10 45 PM" src="https://user-images.githubusercontent.com/57042884/145093617-9caa0b8e-626a-4ff0-82b1-8b465586c59f.png">

<img width="1440" alt="Screen Shot 2021-12-07 at 10 10 34 PM" src="https://user-images.githubusercontent.com/57042884/145093629-9c21c1c4-18de-4902-a1ae-33d00b418987.png">


<img width="1435" alt="Screen Shot 2021-12-07 at 10 10 22 PM" src="https://user-images.githubusercontent.com/57042884/145093639-198404ef-695f-447b-a7bb-66c4a8b1b853.png">


<img width="1439" alt="Screen Shot 2021-12-07 at 10 10 08 PM" src="https://user-images.githubusercontent.com/57042884/145093658-341619f8-f2d4-491e-9626-da4c405cafa0.png">


<img width="1439" alt="Screen Shot 2021-12-07 at 10 08 40 PM" src="https://user-images.githubusercontent.com/57042884/145093672-8c1d03c4-dd4e-4591-b563-26dc1ac09591.png">

<img width="1436" alt="Screen Shot 2021-12-07 at 10 08 32 PM" src="https://user-images.githubusercontent.com/57042884/145093690-8b55d380-09eb-4139-9c6d-794fa76598de.png">

<img width="1439" alt="Screen Shot 2021-12-07 at 10 11 11 PM" src="https://user-images.githubusercontent.com/57042884/145093723-960e3403-81c9-4264-9182-c0163d9507bc.png">

<img width="1437" alt="Screen Shot 2021-12-07 at 10 11 03 PM" src="https://user-images.githubusercontent.com/57042884/145093730-9ad75e85-67ee-43ce-bdb3-9ad88f070abd.png">

<img width="1438" alt="Screen Shot 2021-12-07 at 10 11 38 PM" src="https://user-images.githubusercontent.com/57042884/145093750-83b2b4f3-eff9-4110-b46a-732b0fd5470f.png">

# Admin

<img width="1437" alt="Screen Shot 2021-12-07 at 10 13 27 PM" src="https://user-images.githubusercontent.com/57042884/145093763-f3d64d0e-9c04-4fe2-889a-b3fcddc20660.png">

<img width="1434" alt="Screen Shot 2021-12-07 at 10 17 41 PM" src="https://user-images.githubusercontent.com/57042884/145093854-3e43b670-4300-4f7b-b9d6-74350021e2cd.png">

