TWITTER DEV ACCOUNT SETUP
====

To run a Twitter bot automatically, we need to be able to hook into the Twitter API (application program interface). Luckily, Twitter makes this process pretty easy!

![Add your phone number first](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08/TwitterBotSetupScreenshots/01_AddYourPhone.png)

### 1. ADD YOUR MOBILE NUMBER  
Twitter requires a phone number for apps – it won't show up anywhere, and you can delete it immediately after making your bot, but you do need to add it before making your bot. Click on your profile image, then go to `Settings & Privacy > Mobile...` and add your number.

You'll get a text with a confirmation code – add it in the prompt to activate. We'll come back and delete your phone number later, so leave this tab open.

![Twitter Developer page](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08/TwitterBotSetupScreenshots/02_DeveloperLink.png)

### 2. ACCESS DEVELOPERS PAGE  
In a new tab, go back to the Twitter main page and look for the `Developers` link on the bottom right, or just go to [https://dev.twitter.com](https://dev.twitter.com). On the bottom of the Developers page and click on the `Manage My Apps` link.

![Create an app](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08/TwitterBotSetupScreenshots/03_CreateYourApp.png)

### 2. CREATE A NEW APP  
In the Application Development window, click the `Create New App` button. You'll need to give it some info:

* `Name` can be anything, but call it something like "Twitter Bot Posting Machine"  
* `Description` can also be anything (normally, this would appear for other users wanting to use your app)  
* `Website` can be your personal site, if you have one, or just the Stevens URL  
* `Callback URL` can be left blank  

Agree to the terms and click `Create Your Twitter Application`.

![Create OAuth tokens](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Images/Week08/TwitterBotSetupScreenshots/04_OAuthSettings.png)

### 3. CREATE OAUTH TOKENS  
Now that your app has been created, we have to generate some [OAuth](https://en.wikipedia.org/wiki/OAuth) tokens, special passwords that allow your app to post to your account. At the top of the page, there should be a tab labeled `Keys and Access Tokens`. Scroll to the bottom and click `Create My Acccess Token`. You now should see two sections: `Application Settings` with your consumer key/secret and `Access Token` with the access token/secret. Also double-check that the `Access Level` is set to `Read and Write` (meaning you can both read Tweets from your account and post them too).

Copy these down into the [BasicBot.py code](https://github.com/jeffThompson/CreativeProgramming1/blob/master/Code/Week08/BasicBot.py) – you can come back to them later in the Developer page, if you need to.

### 4. TEST YOUR BOT  
Run some test code to make sure everything works. If it does, delete your phone in the next step.

### 5. DELETE YOUR PHONE NUMBER  
You can leave your phone number in your account, but you may want to be able to use it for more and more bots! Go back to the settings tab and click the `Delete My Phone` link. Your bot will still work, but your phone nubmer will be removed.

