class MyValidator < ActiveModel::Validator
  def validate(argument)
    if argument.include?("Won't Believe", "Secret", "Top", "Guess")
      argument.errors[:title] << 'thats clickbait'
    end
  end
end
