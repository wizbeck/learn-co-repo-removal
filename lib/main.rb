# frozen_string_literal: true

require_relative 'repo_methods'

# Script
token = ENV.fetch('GITHUB_API_TOKEN') { raise 'No Token was found exiting' }
client = Octokit::Client.new(access_token: token)
puts 'Client connected!'
puts 'Running removal of forked learn-co-curriculum repos...'
personal_repos = get_personal_repos(client)
deleted = delete_forked_repos(client, personal_repos)
puts 'Deleted the following repos:'
puts deleted
puts 'Exiting...'
