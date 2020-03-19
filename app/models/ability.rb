# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
   #usuario ||= Usuario.new # guest user (not logged in)
   if user.admin?
     can :manage, :all
   else
     can :manage Dieta, usuario_id: user.id
   end
  end
end
