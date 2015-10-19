class MyClass
  def top_users(users)
    admin_role = "admin"
    referral_streams = %w(email website twitter)
    at_most_users = 5
    registration_threshold = 3.days.ago

    users.select {|u| u.registered? && u.registered_before(registration_threshold) }.
      reject {|u| u.role == admin_role }.
      sort_by {|u| referral_streams.index u.referral_stream }.
      first(at_most_users)
  end
end
