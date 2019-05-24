namespace :sample_data do
  task generate: :environment do
    200.times do
      begin
        User.create first_name: Faker::Name.unique.first_name,
                    last_name: Faker::Name.unique.last_name,
                    email: Faker::Internet.unique.email
      rescue Faker::UniqueGenerator::RetryLimitExceeded
        Faker::UniqueGenerator.clear
        retry
      end
    end

    200.times do
      begin
        Skill.create name: Faker::Lorem.unique.word
      rescue Faker::UniqueGenerator::RetryLimitExceeded
        break
      end
    end

    200.times do
      begin
        Project.create name: Faker::Company.unique.name
      rescue Faker::UniqueGenerator::RetryLimitExceeded
        break
      end
    end
  end
end
