class MyClass
  def top_users(users)
    registered_users = users.select {|u| u.registered? && u.registered_before(registration_threshold) }
    non_admins = registered_users.reject {|u| u.role == admin_role }
    ordered_users = non_admins.sort_by {|u| referral_streams.index u.referral_stream }

    ordered_users.first(at_most_users)
  end

  def registration_threshold
    3.days.ago
  end

  def admin_role
    "admin"
  end

  def referral_streams
    %w(email website twitter)
  end

  def at_most_users
    5
  end
end
