# GitHub API Repo Removal Script - Flatiron Repos

## How To Use
If you pull this down for personal use, you will need to set up your `.env` file. All that is necessary is a `GITHUB_API_TOKEN` that should be used 

## Background
After completing my flatiron school software engineering bootcamp, My personal github account was left with 
a slew of lab repos for learning and training. After 3 years of not taking action, I decided to do something about it, so I wrote my own
script for removing the repos I forked from the bootcamps lessons, `learn-co-curriculum`.

## Project
This project comprises of a simple script that retrieves repo information from a(my) github user, and then removes the repos that match names from learn-co-curriculum. I successfully remove over 300 forked repositories with this method, to help clean up the amount of github repositories linked to my profile.

## Personal Use
Feel Free to fork this gem for personal use, you will have to change the github user targeting repositories, and if you have done labs and forked repos from another company, you can always change the repo.

### GitHub API Rate Limiting Info
I have appeased the rate limiting by using ruby's builtin `sleep` method in between iterations in the loops to alleviate r ate limiting issues with Github's API.
If you have a lot of repositories, the script could take a fairly long time as the deleting portion checks every pulled repo from your account, before attempting to delete, which then sleeps after a few requests to the Github API.

## Dependencies - Gems
- [octokit.rb](https://github.com/octokit/octokit.rb)
- [dotenv](https://github.com/bkeepers/dotenv)
