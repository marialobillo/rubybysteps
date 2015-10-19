class MyClass
  def top_users(users)
    registered_users = recently_registered users
    non_admins = all_non_admins registered_users
    ordered_users = order_by_referral_stream non_admins

    ordered_users.first(at_most_users)
  end

  private

  def recently_registered(users)
    users.select {|u| u.registered? && u.registered_before(registration_threshold)}
  end

  def all_non_admins
    users.reject {|u| u.role == admin_role }
  end

  def order_by_referral_stream(users)
    users.sort_by {|u| referral_streams.index u.referral_streams }
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
