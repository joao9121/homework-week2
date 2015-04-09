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

class MailboxTextFormatter
  
  def Initialize(mailbox)
    @mailbox=mailbox
  end
  
  def format
   
   # max_lenghtFrom=30
   # max_lenghtSubject=35
   # max_lenghtDate=20
    
    max_from=max_lenghtFrom(mailbox)
    max_subject=max_lenghtSubject(mailbox)
    max_date=max_lenghtDate(mailbox)
    
     
     puts "MailBox: #{mailbox.name}"
     
     puts "+#{"-"*max_date}+-#{"-" * max_from}-+-#{"-" * max_subject}-+"
     puts "| Date #{" "*(max_date-4)}| From #{ " "*(max_from- 4)} | Subject #{" "*(max_subject - 7)} |"
     puts "+#{"-"*max_date}+-#{"-" * max_from}-+-#{"-" * max_subject}-+"
     mailbox.emails.each do |email|
       
       puts "+#{"-"*max_date}+-#{"-" * max_from}-+-#{"-" * max_subject}-+"
  end
    
#Tamanho das strings

def max_lenghtFrom(mailbox)
  max=4
 @mailbox.emails.each do |email| 
     if email.from.length > max  
      max = email.from.length   
     end
    end
end

  def max_lenghtSubject(mailbox)
    max = 7
   @mailbox.emails.each do |email|  
     if email.subject.length > max 
       max = email.subject.length
     end
    end 
  end
  
  def max_lenghtDate(mailbox)
    max = 4
   @mailbox.emails.each do |email|  
     if email.date.length > max 
       max = email.date.length
     end
   end  
  end
  
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format