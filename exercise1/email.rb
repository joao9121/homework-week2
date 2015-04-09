#
# JOAO PINHEIRO 
# NUMERO:9121
#
#
#define class email
class Email
  
  def initialize(subject, date, from)
   #instance variables
  @subject=subject
  @date=date
  @from=from
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

email = Email.new("Homework this week", '2014-12-01', "Ferdous")

puts "Date:    #{email.date}"
puts "From:    #{email.from}"
puts "Subject: #{email.subject}"
