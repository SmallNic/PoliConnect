class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all

    # can :read, Questions

    #can only login if they are a law maker or policy experts, anyone else
    #only .gov and .edu

    #
    if user
      can :new, Question
    end

    if user
      can :create, Question
    end
    # can [:create, :new], Question do |q|
    #   user
    # end

    can [:update,  :edit, :destroy], Question do |q|
      q.user_id == user.id
    end

    # binding.pry
    if user
      can :new, Response
    end
    if user
      can :create, Response
    end

    # can [:create, :new], Response do |r|
    #   user
    # end

    can [:update, :edit, :destroy], Response do |r|
      r.user_id == user.id
    end

  end
  # Define abilities for the passed in user here. For example:
  #
  #   user ||= User.new # guest user (not logged in)
  #   if user.admin?
  #     can :manage, :all
  #   else
  #     can :read, :all
  #   end
  #
  # The first argument to `can` is the action you are giving the user
  # permission to do.
  # If you pass :manage it will apply to every action. Other common actions
  # here are :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on.
  # If you pass :all it will apply to every resource. Otherwise pass a Ruby
  # class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the
  # objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, :published => true
  #
  # See the wiki for details:
  # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

end
