class MyClass
  def top_users(users)
    users.select {|u| u.registered? && u.registeres_before(3.days.ago)}.
      reject {|u| u.role == "admin"}.
      sort_by {|u| %w(email website twitter).index
      u.referral_stream}.
        first(5)
    
  end
end
