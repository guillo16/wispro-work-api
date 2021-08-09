module User::Permissionable
  extend ActiveSupport::Concern
  def person?
    self.class.role_levels[role_level] = 0
  end

  def company?
    self.class.role_levels[role_level] >= 1
  end
end
