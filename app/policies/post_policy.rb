class PostPolicy < ApplicationPolicy
	def update?
		user.present? && (user == record.user || (user.admin? || user.contributor?))
	end

	class Scope < Scope
    def resolve
      scope
    end
  end
end
