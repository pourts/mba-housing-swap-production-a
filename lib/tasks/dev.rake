namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do
    # User.destroy_all
    # Bookmark.destroy_all
    # Message.destroy_all
    # Request.destroy_all
    # Conversation.destroy_all
    # Listing.destroy_all
    
    user_a = User.new
    user_a.email = "alice@example.edu"
    user_a.password = "password"
    user_a.password_confirmation = "password"
    user_a.gender = "female"
    user_a.fname = "Alice"
    user_a.lname = "Anderson"
    user_a.save

    user_b = User.new
    user_b.email = "bob@example.edu"
    user_b.password = "password"
    user_b.password_confirmation = "password"
    user_b.gender = "male"
    user_b.fname = "Bob"
    user_b.lname = "Bryson"
    user_b.save

    user_c = User.new
    user_c.email = "chris@example.edu"
    user_c.password = "password"
    user_c.password_confirmation = "password"
    user_c.gender = "neither"
    user_c.fname = "Chris"
    user_c.lname = "Costa"
    user_c.save

    user_d = User.new
    user_d.email = "danielle@example.edu"
    user_d.password = "password"
    user_d.password_confirmation = "password"
    user_d.gender = "female"
    user_d.fname = "Danielle"
    user_d.lname = "Davis"
    user_d.save

    user_e = User.new
    user_e.email = "evan@example.edu"
    user_e.password = "password"
    user_e.password_confirmation = "password"
    user_e.gender = "male"
    user_e.fname = "Evan"
    user_e.lname = "Eng"
    user_e.save

    user_f = User.new
    user_f.email = "fred@example.edu"
    user_f.password = "password"
    user_f.password_confirmation = "password"
    user_f.gender = "male"
    user_f.fname = "Fred"
    user_f.lname = "Flinstone"
    user_f.save

    user_g = User.new
    user_g.email = "greg@example.edu"
    user_g.password = "password"
    user_g.password_confirmation = "password"
    user_g.gender = "male"
    user_g.fname = "Greg"
    user_g.lname = "Goodspeed"
    user_g.save

    user_h = User.new
    user_h.email = "hoda@example.edu"
    user_h.password = "password"
    user_h.password_confirmation = "password"
    user_h.gender = "female"
    user_h.fname = "Hoda"
    user_h.lname = "Hiti"
    user_h.save

    user_i = User.new
    user_i.email = "inez@example.edu"
    user_i.password = "password"
    user_i.password_confirmation = "password"
    user_i.gender = "female"
    user_i.fname = "Inez"
    user_i.lname = "Isabelle-Vargas"
    user_i.save

    user_j = User.new
    user_j.email = "john@example.edu"
    user_j.password = "password"
    user_j.password_confirmation = "password"
    user_j.gender = "male"
    user_j.fname = "John"
    user_j.lname = "Johnson"
    user_j.save

    user_k = User.new
    user_k.email = "kathy@example.edu"
    user_k.password = "password"
    user_k.password_confirmation = "password"
    user_k.gender = "female"
    user_k.fname = "Kathy"
    user_k.lname = "Kyle"
    user_k.save

    user_l = User.new
    user_l.email = "lisa@example.edu"
    user_l.password = "password"
    user_l.password_confirmation = "password"
    user_l.gender = "female"
    user_l.fname = "Lisa"
    user_l.lname = "Ling"
    user_l.save

    user_m = User.new
    user_m.email = "mike@example.edu"
    user_m.password = "password"
    user_m.password_confirmation = "password"
    user_m.gender = "male"
    user_m.fname = "Michael"
    user_m.lname = "Miller"
    user_m.save

    user_n = User.new
    user_n.email = "nancy@example.edu"
    user_n.password = "password"
    user_n.password_confirmation = "password"
    user_n.gender = "female"
    user_n.fname = "Nancy"
    user_n.lname = "Nickerson"
    user_n.save

    user_o = User.new
    user_o.email = "oliver@example.edu"
    user_o.password = "password"
    user_o.password_confirmation = "password"
    user_o.gender = "male"
    user_o.fname = "Oliver"
    user_o.lname = "Onitsuka"
    user_o.save

    user_p = User.new
    user_p.email = "pat@example.edu"
    user_p.password = "password"
    user_p.password_confirmation = "password"
    user_p.gender = "neither"
    user_p.fname = "Pat"
    user_p.lname = "Paterson"
    user_p.save

    user_q = User.new
    user_q.email = "quentin@example.edu"
    user_q.password = "password"
    user_q.password_confirmation = "password"
    user_q.gender = "male"
    user_q.fname = "Quentin"
    user_q.lname = "Quirk"
    user_q.save

    user_r = User.new
    user_r.email = "ronald@example.edu"
    user_r.password = "password"
    user_r.password_confirmation = "password"
    user_r.gender = "male"
    user_r.fname = "Ronald"
    user_r.lname = "Rice"
    user_r.save

    user_s = User.new
    user_s.email = "sam@example.edu"
    user_s.password = "password"
    user_s.password_confirmation = "password"
    user_s.gender = "neither"
    user_s.fname = "Sam"
    user_s.lname = "Simpson"
    user_s.save

    user_t = User.new
    user_t.email = "tim@example.edu"
    user_t.password = "password"
    user_t.password_confirmation = "password"
    user_t.gender = "female"
    user_t.fname = "Tim"
    user_t.lname = "Tebow"
    user_t.save

    user_u = User.new
    user_u.email = "ugo@example.edu"
    user_u.password = "password"
    user_u.password_confirmation = "password"
    user_u.gender = "male"
    user_u.fname = "Ugo"
    user_u.lname = "Umber"
    user_u.save

    user_v = User.new
    user_v.email = "victor@example.edu"
    user_v.password = "password"
    user_v.password_confirmation = "password"
    user_v.gender = "male"
    user_v.fname = "Victor"
    user_v.lname = "Vance"
    user_v.save

    user_w = User.new
    user_w.email = "wendy@example.edu"
    user_w.password = "password"
    user_w.password_confirmation = "password"
    user_w.gender = "female"
    user_w.fname = "Wendy"
    user_w.lname = "Wu"
    user_w.save

    user_x = User.new
    user_x.email = "xander@example.edu"
    user_x.password = "password"
    user_x.password_confirmation = "password"
    user_x.gender = "male"
    user_x.fname = "Xander"
    user_x.lname = "Xu"
    user_x.save

    user_y = User.new
    user_y.email = "yan@example.edu"
    user_y.password = "password"
    user_y.password_confirmation = "password"
    user_y.gender = "male"
    user_y.fname = "Yan"
    user_y.lname = "Yu"
    user_y.save

    user_z = User.new
    user_z.email = "zack@example.edu"
    user_z.password = "password"
    user_z.password_confirmation = "password"
    user_z.gender = "male"
    user_z.fname = "Zachary"
    user_z.lname = "Zubrick"
    user_z.save
    
    1.upto(26) do |fake_listing|
      current_one = fake_listing.to_i
      next_one = current_one + 1
      fake_listing = Listing.new
      city = rand(4)
        if city == 0
          fake_listing.metro_area = "Boston"
        elsif city == 1
          fake_listing.metro_area = "Chicago"
        elsif city == 2
          fake_listing.metro_area = "New York"
        elsif city == 3
          fake_listing.metro_area = "San Francisco"
        end 
      fake_listing.start_date = Faker::Date.in_date_period(year: 2020, month: 6)
      fake_listing.end_date = Faker::Date.in_date_period(year: 2020, month: 9)
      fake_listing.owner_id = current_one 
      fake_listing.available = true 
      fake_listing.address = Faker::Address.street_address
      fake_listing.beds = rand(1..5)
      fake_listing.baths = rand(1..4)
      fake_listing.private_bath = rand(2)
      fake_listing.floor = rand(1..40)
      fake_listing.elevator = rand(2)
      washer = rand(2)
        if washer == 0
          fake_listing.laundry = "in_unit"
        elsif washer == 1
          fake_listing.laundry = "in_building"
        elsif washer == 2
          fake_listing.laundry = "none"
        end 
      fake_listing.rent = rand(1200..4000)
      pref = rand (3)
        if pref == 0
          fake_listing.gender_preference = "none"
        elsif pref == 1
          fake_listing.gender_preference = "male"
        elsif pref == 2
          fake_listing.gender_preference = "female"
        end
      fake_listing.pets = rand(2)
      fake_listing.details = Faker::GreekPhilosophers.quote
      fake_listing.roomate = rand(2)
      fake_listing.save
    end

    1.upto(26) do |fake_bookmark|
      current_one = fake_bookmark.to_i
      next_one = current_one + 1
      fake_bookmark = Bookmark.new
      fake_bookmark.creator_id = current_one
      fake_bookmark.listing_id = rand(1..26)
      fake_bookmark.save
    end
    
    1.upto(26) do |fake_request|
      current_one = fake_request.to_i
      next_one = current_one + 1
      fake_request = Request.new
      fake_request.requester_id = current_one
      city = rand(4)
        if city == 0
          fake_request.metro_area = "Boston"
        elsif city == 1
          fake_request.metro_area = "Chicago"
        elsif city == 2
          fake_request.metro_area = "New York"
        elsif city == 3
          fake_request.metro_area = "San Francisco"
        end
      fake_request.start_date = Faker::Date.in_date_period(year: 2020, month: 6)
      fake_request.end_date = Faker::Date.in_date_period(year: 2020, month: 9)
      fake_request.save
    end
    
  puts "Generated dummy data" 
  end # task do

end # namespace do 
