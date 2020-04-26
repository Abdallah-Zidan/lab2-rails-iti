# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
      if user.present?
        can :manage, Article , user_id: user.id
        can :read, :all
    end   
  end
end
