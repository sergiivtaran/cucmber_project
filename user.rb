class User
  attr_accessor :first_name, :last_name, :email

  def initialize(options)
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @email = options[:email]
  end


  def registered?
    @registered ||= false
  end


  def active?
    @active.nil? ? true : @active
  end


  def deactivate
    @active = false
  end

  def register_new_user
    puts 'ok'
  end


end
