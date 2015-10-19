class MyClass

  class UserList < Array
    def recently_registered(treshold)
      self.class.new(select {|u| u.registered? && u.registered_before(treshold)})
    end

    def all_non_role(role)
      self.class.new(reject {|u| u.role == role })
    end

    def order_by_referral_stream(referral_streams)
      self.class.new(sort_by {|u| referral_streams.index u.referral_stream })
    end
  end


  def top_users(users)
    UserList.new(users).recently_registered(registration_threshold).
      all_non_role(admin_role).
        order_by_referral_stream(referral_streams).
          first(at_most_users)
  end

  private

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
