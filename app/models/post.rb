class Post < ActiveRecord::Base


  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :title, exclusion: {in: ["True Facts"]}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}




end


# class MyValidator < ActiveModel::Validator
#   def validate(argument)
#     if argument.include?("Won't Believe", "Secret", "Top", "Guess")
#       argument.errors[:name] << 'thats clickbait'
#     end
#   end
# end
