class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # Can READ anything
    can :read, :all

    if user.persisted? # in db, so logged in
      if user.is_admin?
        can :manage, :all
      else
        # Can MANAGE (create, read, update, destroy, etc.)
        # own Question and Answer
        can :manage, Question, user: user
        can :manage, Answer, user: user
        can [:create, :edit], Profile, user: user
      end
    end
  end
end
