class EnToEnCy < ActiveRecord::Migration[5.1]
  def up
    User.find_each do |user|
      if user.locale == 'en'
        user.update(locale: 'en-CY')
      end
    end
  end

  def down
    User.find_each do |user|
      if user.locale == 'en-CY'
        user.update(locale: 'en')
      end
    end
  end
end
