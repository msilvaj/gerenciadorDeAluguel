# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= Usuario.new # guest user (not logged in)
   can :read, :all # permissions for every user, even if not logged in
   if user.present?
     #byebug
     can :manage, Usuario, usuario_id: user.id
     can :manage, Dieta, usuario_id: user.id
     can :manage, Dieta, usuario_id: {usuario: {id: user.id}}


   end
  end
end
