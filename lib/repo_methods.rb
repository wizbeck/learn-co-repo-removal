# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def get_personal_repos(client)
  page = 1
  done = false
  cache = []
  until done
    repos = client.repos('wizbeck', query: { page: page })
    if repos.empty?
      done = true
      next
    else
      repos.each do |repo|
        cache << { name: repo[:name], full_name: repo[:full_name] }
      end
      page += 1
      sleep 1
    end
  end
  cache
end
# rubocop:enable Metrics/MethodLength

def delete_forked_repos(client, personal_repos)
  deleted_repos = []
  personal_repos.each do |repo|
    if client.repository?("learn-co-curriculum/#{repo[:name]}")
      deleted = client.delete_repository(repo[:full_name])
      deleted_repos << repo[:full_name] if deleted
    end
    sleep(1)
  end
  deleted_repos
end
