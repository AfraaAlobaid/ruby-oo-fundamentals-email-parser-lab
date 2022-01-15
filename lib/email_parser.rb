# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(emails)
        @emails = emails
    end

    def parse
        @emails.delete!","
        result = @emails.split(" ")
        result.each_with_index do |email, index|
            result.delete_at(index) if result.count(email) > 1
        end
        result
    end
end
