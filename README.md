# Swift SMS API Sample Code - Version 1.0

This is the official **Swift SMS API Sample** sample provided by [Full Stack Team Six](https://fullstackteamsix.com/) to makes it easy for developers to integrate our API in their code.

Jump To:
* [Getting Started](#Getting-Started)
* [Quick Examples](#Quick-Examples)
* [Getting Help](#Getting-Help)
* [Features](#Features) 
* [More Resources](#Resources) 

## Getting Started

1. **Create an Account** – Before you begin, you need to
   sign up and register your SENDER name.
 

## Quick Examples

### Sending an SMS

```swift
 //Sending http post request
               AF.request(URL_USER_REGISTER, method: .post, parameters: parameters)
               .responseString { response in
                print("response: \(response)")
                       switch response.result {
                       case .success(let value):
                        
                           self.responseText.text = value
                           
                       case .failure(let error):
                           print(error)
                       }
           
        }

```

## Getting Help

Please use these community resources for getting help. We use the GitHub issues for tracking bugs and feature requests and have limited bandwidth to address them.
For general issues regarding the SMS services and their limitations, you may also take a look at the [Documentation](https://fullstackteamsix.com/docs).


### Opening Issues

If you encounter a bug with our `API` we would like to hear about it. You can contact us through [here](https://fullstackteamsix.com/contacts.html).

## Features

* Send Automated SMS via API
 
## Reach out on social media

* [Twitter](www.twitter.com/fullstackteam6) – Follow us on Twitter 
* [Facebook](https://web.facebook.com/fullstackteamsix/) – Follow us on Facebook 
* [Instagram](https://www.instagram.com/full_stack_team_six/) – Follow us on Instagram 
* [LinkedIn](https://www.linkedin.com/company/full-stack-team-six) – Follow us on LinkedIn 
