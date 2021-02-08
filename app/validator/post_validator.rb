class PostValidator < ActiveModel::Validator

    def validate(record)
        if record.title == nil
            return
        end
        unless record.title.match?(/Won't Believe/ || /Secret/ || /Top/ || /Guess/)
            record.errors[:title] << "The title did not contain a clickbait!"
        end
    end

end