#
# JOAO PINHEIRO 
# NUMERO:9121
#
#
#define class email
class Email
  #subject string and headers hash
  def initialize(subject, headers)
   #instance variables
  @subject=subject
  @date=headers[:date]
  @from=headers[:from]
  end
 
  #setter for subject
  def subject=(value)
    @subject=value
  end
  #getter for subject
  def subject
    @subject
  end   
  
  #setter for date  
  def date=(value)
    @date=value
  end
  #getter for date
  def date
    @date
  end
  #setter for from
  def from=(value)
    @from =value
  end
  #getter for from
  def from
    @from
  end
  
 end
 
email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"

#define class mailbox
class Mailbox
  
  def initialize(name, emails)
    @name=name
    @emails=emails 
  end
#setter for subject
  def name=(value)
    @name=value
  end
  #getter for subject
  def name
    @name
  end   
  
  #setter for date  
  def emails=(emails)
    @emails=value
  end
  #getter for date
  def emails
    @emails
  end
end 
  emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts "Date:    #{email.date}"
  puts "From:    #{email.from}"
  puts "Subject: #{email.subject}"
  puts
end
