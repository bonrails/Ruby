require "delegate"

class User

  def initialize(first_name: , last_name: )
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

end

class UserDecorator < SimpleDelegator
  # Below is a implememtation without using  Simpledelegator
  #def initialize(object)
  #  @object = object
  #end
  #
  #def method_missing(m, *args )
  #   if @object.respond_to?(m)
  #     @object.send(m, *args)
  #   end
  #end

  def full_name
    "#{first_name} #{last_name}"
  end
end

user=User.new( first_name: 'myFirstName',last_name: 'myLastName' )

decorated_user = UserDecorator.new(user)
p decorated_user.full_name





