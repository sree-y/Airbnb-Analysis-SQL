/*
                                            AIRBNB Analysis
                                            By Sree Yadlapalli
 */


-- List Databases
show databases;

-- Drop a database
drop database if exists airbnb;

-- Create a database
create database airbnb;

-- Selecting Default Database
use airbnb;

-- Checking which database is selected
select database();

-- List tables in a database
show tables;

-- Drop the calender table if it already exists
drop table if exists airbnb.calendar;

-- Create the calender table (an empty table)
create table airbnb.calendar (
    listing_id    bigint,
    dt            char(10),
    available     char(1),
    price         varchar(20)
);
-- Describe the calendar table
-- Display the table details such as data types
describe airbnb.calendar;
truncate airbnb.calendar;

-- Load data from a csv file into the table

load data local infile 'C:\\Users\\Sree\\Desktop\\MYSQLTutorialFolder\\airbnb\\calendar.csv'
into table airbnb.calendar
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
ignore 1 lines;

-- test calender table
select * from airbnb.calendar limit 5;
/*
12147973,2017-09-05,f,""
12147973,2017-09-04,f,""
12147973,2017-09-03,f,""
12147973,2017-09-02,f,""
12147973,2017-09-01,f,""
 */
select * from airbnb.calendar where listing_id=14204600 and dt='2017-08-20';
/*
14204600,2017-08-20,t,"$1,157.00"
*/

-- Create listings table
drop table if exists airbnb.listings;
create table airbnb.listings (
    id bigint,
    listing_url text,
    scrape_id bigint,
    last_scraped char(10),
    name text,
    summary text,
    space text,
    description text,
    experiences_offered text,
    neighborhood_overview text,
    notes text,
    transit text,
    access text,
    interaction text,
    house_rules text,
    thumbnail_url text,
    medium_url text,
    picture_url text,
    xl_picture_url text,
    host_id bigint,
    host_url text,
    host_name varchar(100),
    host_since char(10),
    host_location text,
    host_about text,
    host_response_time text,
    host_response_rate text,
    host_acceptance_rate text,
    host_is_superhost char(1),
    host_thumbnail_url text,
    host_picture_url text,
    host_neighbourhood text,
    host_listings_count int,
    host_total_listings_count int,
    host_verifications text,
    host_has_profile_pic char(1),
    host_identity_verified char(1),
    street text,
    neighbourhood text,
    neighbourhood_cleansed text,
    neighbourhood_group_cleansed text,
    city text,
    state text,
    zipcode text,
    market text,
    smart_location text,
    country_code text,
    country text,
    latitude text,
    longitude text,
    is_location_exact text,
    property_type text,
    room_type text,
    accommodates int,
    bathrooms text,
    bedrooms text,
    beds text,
    bed_type text,
    amenities text,
    square_feet text,
    price text,
    weekly_price text,
    monthly_price text,
    security_deposit text,
    cleaning_fee text,
    guests_included int,
    extra_people text,
    minimum_nights int,
    maximum_nights int,
    calendar_updated text,
    has_availability varchar(10),
    availability_30 int,
    availability_60 int,
    availability_90 int,
    availability_365 int,
    calendar_last_scraped varchar(10),
    number_of_reviews int,
    first_review varchar(10),
    last_review varchar(10),
    review_scores_rating text,
    review_scores_accuracy text,
    review_scores_cleanliness text,
    review_scores_checkin text,
    review_scores_communication text,
    review_scores_location text,
    review_scores_value text,
    requires_license char(1),
    license text,
    jurisdiction_names text,
    instant_bookable char(1),
    cancellation_policy varchar(20),
    require_guest_profile_picture char(1),
    require_guest_phone_verification char(1),
    calculated_host_listings_count int,
    reviews_per_month text
);

-- Describe the listing table
-- Display the table details such as data types
describe airbnb.listings;
truncate airbnb.listings;

-- Load data from a csv file into the table

load data local infile 'C:\\Users\\Sree\\Desktop\\MYSQLTutorialFolder\\airbnb\\listings.csv'
into table airbnb.listings
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
ignore 1 lines;

-- test listings table
select * from airbnb.listings limit 5;
/*
 12147973,https://www.airbnb.com/rooms/12147973,20160906204935,2016-09-07,Sunny Bungalow in the City,"Cozy, sunny, family home.  Master bedroom high ceilings. Deck, garden with hens, beehives & play structure.   Short walk to charming village with  attractive stores, groceries & local restaurants. Friendly neighborhood. Access public transportation.","The house has an open and cozy feel at the same time.  The living room has a flat screen TV.  The kitchen has all you need for cooking.  We prefer you buy your food but can use the organic oils, herbs, etc.   The yard can be seen from sitting room and when the weather allows, the yard is a place children can lose themselves in a safe way.  We have 2 bee hives, 6 hens fenced in (sometimes they get out of their coop area & into the yard), 2 rabbits in a hutch and play structure.","Cozy, sunny, family home.  Master bedroom high ceilings. Deck, garden with hens, beehives & play structure.   Short walk to charming village with  attractive stores, groceries & local restaurants. Friendly neighborhood. Access public transportation. The house has an open and cozy feel at the same time.  The living room has a flat screen TV.  The kitchen has all you need for cooking.  We prefer you buy your food but can use the organic oils, herbs, etc.   The yard can be seen from sitting room and when the weather allows, the yard is a place children can lose themselves in a safe way.  We have 2 bee hives, 6 hens fenced in (sometimes they get out of their coop area & into the yard), 2 rabbits in a hutch and play structure. You will have access to 2 bedrooms, a living room, kitchen, bathrooms, and yard. Roslindale is quiet, convenient and friendly.  For Southern food try Redd's in Rozzie.  Italian Delfino's or Sophia's Grotto are great. Birch St Bistro has nice atmostphere--a little pric",none,"Roslindale is quiet, convenient and friendly.  For Southern food try Redd's in Rozzie.  Italian Delfino's or Sophia's Grotto are great. Birch St Bistro has nice atmostphere--a little pricier.   If you are cooking the Fish Market has fresh fish daily; Tony's makes his own sausages and has Italian foods;  for  a wide variety of delicious cheeses and chocolates go to the Cheese Cellar on Birch St.","","The bus stop is 2 blocks away, and frequent. Bus is about a 10 minute ride to the Orange line, forest hills. The commuter rail into down town is a 6 minute walk from our home.  Walking is pleasant and restaurants, shops and grocery store are all a 6 minute walk away.","You will have access to 2 bedrooms, a living room, kitchen, bathrooms, and yard.","",Clean up and treat the home the way you'd like your home to be treated.  No smoking.,https://a2.muscache.com/im/pictures/c0842db1-ee98-4fe8-870b-d1e2af33855d.jpg?aki_policy=small,https://a2.muscache.com/im/pictures/c0842db1-ee98-4fe8-870b-d1e2af33855d.jpg?aki_policy=medium,https://a2.muscache.com/im/pictures/c0842db1-ee98-4fe8-870b-d1e2af33855d.jpg?aki_policy=large,https://a2.muscache.com/im/pictures/c0842db1-ee98-4fe8-870b-d1e2af33855d.jpg?aki_policy=x_large,31303940,https://www.airbnb.com/users/show/31303940,Virginia,2015-04-15,"Boston, Massachusetts, United States","We are country and city connecting in our deck and garden. Enjoy our music room, books and flat screen TV with the pastoral backyard of hens, bees, rabbits and an organic garden.  ",N/A,N/A,N/A,f,https://a2.muscache.com/im/pictures/5936fef0-ba16-45bd-ac33-9226137d0763.jpg?aki_policy=profile_small,https://a2.muscache.com/im/pictures/5936fef0-ba16-45bd-ac33-9226137d0763.jpg?aki_policy=profile_x_medium,Roslindale,1,1,"['email', 'phone', 'facebook', 'reviews']",t,f,"Birch Street, Boston, MA 02131, United States",Roslindale,Roslindale,"",Boston,MA,02131,Boston,"Boston, MA",US,United States,42.282618795779484,-71.13306792912681,t,House,Entire home/apt,4,1.5,2,3,Real Bed,"{TV,""Wireless Internet"",Kitchen,""Free Parking on Premises"",""Pets live on this property"",Dog(s),Heating,""Family/Kid Friendly"",Washer,Dryer,""Smoke Detector"",""Fire Extinguisher"",Essentials,Shampoo,""Laptop Friendly Workspace""}","",$250.00,"","","",$35.00,1,$0.00,2,1125,2 weeks ago,"",0,0,0,0,2016-09-06,0,"","","","","","","","","",f,"","",f,moderate,f,f,1,
3075044,https://www.airbnb.com/rooms/3075044,20160906204935,2016-09-07,Charming room in pet friendly apt,"Charming and quiet room in a second floor 1910 condo building. The room has a full size bed, darkening curtains, window A/C unit. It's quiet because it's in the back of the house. Shared bathroom. Guests can use kitchen, living room. Pet friendly.",Small but cozy and quite room with a full size bed. Ample street parking.,"Charming and quiet room in a second floor 1910 condo building. The room has a full size bed, darkening curtains, window A/C unit. It's quiet because it's in the back of the house. Shared bathroom. Guests can use kitchen, living room. Pet friendly. Small but cozy and quite room with a full size bed. Ample street parking. Apt has one more bedroom (which I use) and large living space and kitchen that you can use.  Possibility to do laundry. Two porches. If I am at home, I am likely working in my home office, which is a separate room. I can help you settle in and give you tips and directions on the neighborhood and Boston.  The room is in Roslindale, a diverse and primarily residential neighborhood of Boston. It's well connected via public transportation to other neighborhoods and easy to access by car. Roslindale Square is a nice business district with supermarkets. banks, a bakery, etc. (See my Guidebook for some recommendations). The Arnold Arboretum is just steps away. Plenty of safe s",none,"The room is in Roslindale, a diverse and primarily residential neighborhood of Boston. It's well connected via public transportation to other neighborhoods and easy to access by car. Roslindale Square is a nice business district with supermarkets. banks, a bakery, etc. (See my Guidebook for some recommendations). The Arnold Arboretum is just steps away.","If you don't have a US cell phone, you can text me using (SENSITIVE CONTENTS HIDDEN).","Plenty of safe street parking. Bus stops a few hundred feet from home. Buses 35, 36, or 37 will take you to the Forest Hills subway station is approximately 10 minutes. The buses are frequent during the week, less frequent during the weekend. However, many more buses leave Roslindale Sq., which is just 5 minutes away. Commuter rail is also down the road: more expensive but will take you downtown (Copley and South Station) in less than 20 minutes. Does not run on Sundays. The station is Roslindale Village on the Needham Heights line.",Apt has one more bedroom (which I use) and large living space and kitchen that you can use.  Possibility to do laundry. Two porches.,"If I am at home, I am likely working in my home office, which is a separate room. I can help you settle in and give you tips and directions on the neighborhood and Boston. ",Pet friendly but please confirm with me if the pet you are planning on bringing with you is OK. I have a cute and quiet mixed chihuahua. I could accept more guests (for an extra fee) but this also needs to be confirmed beforehand. Also friends traveling together could sleep in separate beds for an extra fee (the second bed is either a sofa bed or inflatable bed). Smoking is only allowed on the porch.,https://a1.muscache.com/im/pictures/39327812/df0f1aab_original.jpg?aki_policy=small,https://a1.muscache.com/im/pictures/39327812/df0f1aab_original.jpg?aki_policy=medium,https://a1.muscache.com/im/pictures/39327812/df0f1aab_original.jpg?aki_policy=large,https://a1.muscache.com/im/pictures/39327812/df0f1aab_original.jpg?aki_policy=x_large,2572247,https://www.airbnb.com/users/show/2572247,Andrea,2012-06-07,"Boston, Massachusetts, United States",I live in Boston and I like to travel and have travelers staying at my place.,within an hour,100%,100%,f,https://a2.muscache.com/im/users/2572247/profile_pic/1442235897/original.jpg?aki_policy=profile_small,https://a2.muscache.com/im/users/2572247/profile_pic/1442235897/original.jpg?aki_policy=profile_x_medium,Roslindale,1,1,"['email', 'phone', 'facebook', 'linkedin', 'amex', 'reviews', 'jumio']",t,t,"Pinehurst Street, Boston, MA 02131, United States",Roslindale,Roslindale,"",Boston,MA,02131,Boston,"Boston, MA",US,United States,42.286240821867416,-71.13437396457161,t,Apartment,Private room,2,1.0,1,1,Real Bed,"{TV,Internet,""Wireless Internet"",""Air Conditioning"",Kitchen,""Pets Allowed"",""Pets live on this property"",Dog(s),Heating,""Family/Kid Friendly"",Washer,Dryer,""Smoke Detector"",""Carbon Monoxide Detector"",""Fire Extinguisher"",Essentials,Shampoo,""Lock on Bedroom Door"",Hangers,""Hair Dryer"",Iron}","",$65.00,$400.00,"",$95.00,$10.00,0,$0.00,2,15,a week ago,"",26,54,84,359,2016-09-06,36,2014-06-01,2016-08-13,94,10,9,10,10,9,9,f,"","",t,moderate,f,f,1,1.30
6976,https://www.airbnb.com/rooms/6976,20160906204935,2016-09-07,Mexican Folk Art Haven in Boston,"Come stay with a friendly, middle-aged guy in the safe and quiet Roslindale neighborhood of Boston. You will have you own clean, furnished room (with cable TV, Wi-Fi, and a desk to work at) in an apartment that is filled with Mexican folk art. ","Come stay with a friendly, middle-aged guy in the safe and quiet Roslindale neighborhood of Boston. You will have you own clean, furnished room (with cable TV, Wi-Fi, and a desk to work at) in an apartment that is filled with Mexican folk art. This is a well-maintained two-family house built in the 1940s. My apartment is on the second floor. This is a pet and smoke-free apartment.   PRICE: Price includes ALL utilities (heat, electricity, Wi-Fi, cable TV, air conditioner), parking in street, and use of back yard. NO SMOKING indoors or outside. Note that the bed is a size ""Full"" mattress, not a Queen or a King. This is ideal for one guest, but if it is two people traveling together, you can fit two in the bed, or the second person can sleep in the living room, on the long couch. (Not a fold-out couch, but comfortable). Additional fee for the second person is $20. The price listed is for one person.  I offer discounted rates for stays of one week or longer.   Guests get free coffee and a ","Come stay with a friendly, middle-aged guy in the safe and quiet Roslindale neighborhood of Boston. You will have you own clean, furnished room (with cable TV, Wi-Fi, and a desk to work at) in an apartment that is filled with Mexican folk art. This is a well-maintained two-family house built in the 1940s. My apartment is on the second floor. This is a pet and smoke-free apartment.   PRICE: Price includes ALL utilities (heat, electricity, Wi-Fi, cable TV, air conditioner), parking in street, and use of back yard. NO SMOKING indoors or outside. Note that the bed is a size ""Full"" mattress, not a Queen or a King. This is ideal for one guest, but if it is two people traveling together, you can fit two in the bed, or the second person can sleep in the living room, on the long couch. (Not a fold-out couch, but comfortable). Additional fee for the second person is $20. The price listed is for one person.  I offer discounted rates for stays of one week or longer.   Guests get free coffee and a ",none,"The LOCATION: Roslindale is a safe and diverse Boston neighborhood located between Jamaica Plain and West Roxbury. This apartment is on Ardale Street, a quiet side street off Centre Street.  This is about one-half mile from Faulkner Hospital, walking distance to the renowned Arnold Arboretum park (look for it on (SENSITIVE CONTENTS HIDDEN)), and about 20-minute drive to the Longwood Medical Center area. I have easy, restriction-free, on-street parking here, and a back yard. Just one block from the house, there is a 7-11 convenience store, a dry-cleaner, a Mexican restaurant, a pizza parlor, a popular sports bar and grill (similar to an Irish Pub), and another restaurant for breakfast and lunch.  The house is located 1/2 mile from Roslindale Square where you will find more restaurants, 4 bakeries, the public library and the post office. There is a superb farmers market here every Saturday. The fast-train to downtown Boston stops there, too.","I am in a scenic part of Boston with a couple big parks nearby, and Jamaica Pond, where you can rent a sail boat or jog the paved perimeter path, within a mile away. Here is a clue to my personality:  Favorite singers are Judy Collins, Ari Hest, Miguel Bose and the British rock band, James. My top favorite places to travel to are Oaxaca, Mexico and Budapest, Hungary. In years gone by, I have had repeated trips to Paris and to Tunisia, also. These days I am mostly home, spending a lot of time in front of my iMac, writing copy, filling orders or coding for websites.","PUBLIC TRANSPORTATION: From the house, quick public transportation to Forest Hills station (Orange Line and Commuter Rail) is via two nearby MBTA bus lines. The #38 bus stops one-half block away, and takes you past the Faulkner, then to Jamaica Plain and Forest Hills.  The #51 bus stops one block away, and goes a more direct route to Forest Hills. (The bus also goes to Cleveland Circle in Brookline.) Between the two bus lines, there is a bus that stops here every 15 minutes or so on weekdays; but no service on Sunday. ALSO, the apartment is just 1/2 mile walk to the Roslindale Village MBTA commuter rail stop, Needham Line. The train takes you to Ruggles Station at Northeastern Univ., to Back Bay station and to South Station in downtown Boston, in about 15 minutes time.  There are more city busses, running 7 days a week, from this MBTA rail station. You can also pick up ZIP Cars there.  GETTING HERE FROM LOGAN AIRPORT: By public transportation: You take the free shuttle bus at the airpo","I am living in the apartment during your stay, and I work from home, so I'm there most of the time.  Guests are welcome to use the kitchen and all cooking utensils, refrigerator, etc. I have a gas stove, toaster oven, microwave, convection oven and a pressure cooker! I have a backyard garden, so if you are here during August and September, be prepared for tomatoes and cucumbers! In addition to your personal room, you can also use the living room which includes a 32-inch HDTV with an Apple TV connection.  The bathroom, adjacent to your room, is shared.  The only room that is off limits is my bedroom on the opposite side of the apartment. I have a clothes washer and dryer in the basement for your use. ","ABOUT ME: I'm a laid-back, friendly, unmarried guy. I work from home, spending a lot of time on the computer. I have an website that sells handmade things from Mexico. It is called ""Viva Oaxaca Folk Art."" You will see lots of folk art in the apartment. I also run websites for other small companies. I don’t smoke, don’t have overnight guests. I keep regular hours, am friendly, considerate and quiet. I am one of the original Boston AIRBNB hosts, having signed-up with them in 2008.   I am a big traveler myself, and I love hearing stories of where guests have been or where they are heading to next. ","I encourage you to use my kitchen, cooking and laundry facilities. There is no additional charge to use the washer/dryer in the basement.  No smoking, inside or outside. Come home as late as you want.  If you come home stumbling drunk, it's OK the first time. If you do it again, and you wake up me or the neighbors downstairs, we will be annoyed.  (Just so you know . . . )",https://a2.muscache.com/im/pictures/6ae8335d-91e6-4598-b380-3129db624df3.jpg?aki_policy=small,https://a2.muscache.com/im/pictures/6ae8335d-91e6-4598-b380-3129db624df3.jpg?aki_policy=medium,https://a2.muscache.com/im/pictures/6ae8335d-91e6-4598-b380-3129db624df3.jpg?aki_policy=large,https://a2.muscache.com/im/pictures/6ae8335d-91e6-4598-b380-3129db624df3.jpg?aki_policy=x_large,16701,https://www.airbnb.com/users/show/16701,Phil,2009-05-11,"Boston, Massachusetts, United States","I am a middle-aged, single male with a wide range of interests and creative outlets.  I have traveled frequently, in much of the world, especially central Europe, including Hungary and Slovakia. In recent years I have had many trips to Mexico, where I buy folk art for my online business, called Viva Oaxaca Folk Art. I love meeting new people, especially travelers with stories to tell.

In addition to the above, I run web sites for small companies, including a physical therapy practice, a cancer treatment center and a colonial era historic house and museum.

In the 1980s, I was a publicist and concert producer, and have presented many concerts with Judy Collins, as well as with Ella Fitzgerald, Laura Nyro, Tom Rush, Barbara Cook and Karen Akers. Now I run a channel on YouTube called ""beta.hifi.archive"" that is a collection of 50 years of video clips from the career of Judy Collins.
So come to Boston, and stay with me. Enjoy some tomatoes and cucumbers from my garden, explore my world of Mexican folk art, and let's talk about our travel adventures.
",within a few hours,100%,88%,t,https://a2.muscache.com/im/users/16701/profile_pic/1393434148/original.jpg?aki_policy=profile_small,https://a2.muscache.com/im/users/16701/profile_pic/1393434148/original.jpg?aki_policy=profile_x_medium,Roslindale,1,1,"['email', 'phone', 'reviews', 'jumio']",t,t,"Ardale St., Boston, MA 02131, United States",Roslindale,Roslindale,"",Boston,MA,02131,Boston,"Boston, MA",US,United States,42.2924378866568,-71.13576525374667,t,Apartment,Private room,2,1.0,1,1,Real Bed,"{TV,""Cable TV"",""Wireless Internet"",""Air Conditioning"",Kitchen,""Free Parking on Premises"",Heating,Washer,Dryer,""Smoke Detector"",""Carbon Monoxide Detector"",""First Aid Kit"",""Safety Card"",Essentials,Shampoo,""Lock on Bedroom Door"",""translation missing: en.hosting_amenity_49"",""translation missing: en.hosting_amenity_50""}","",$65.00,$395.00,"$1,350.00","","",1,$20.00,3,45,5 days ago,"",19,46,61,319,2016-09-06,41,2009-07-19,2016-08-05,98,10,9,10,10,9,10,f,"","",f,moderate,t,f,1,0.47
1436513,https://www.airbnb.com/rooms/1436513,20160906204935,2016-09-07,Spacious Sunny Bedroom Suite in Historic Home,"Come experience the comforts of home away from home in our fabulous bedroom suite available in Roslindale, a neighborhood in Boston.  Enjoy sleeping on a large king sized bed with plush down bedding, access to a dishwasher, washer dryer and home gym. The house is incredibly accessible to public transportation and the center of Boston. Free street parking is available right in front of the house. Weekend farmers markets, restaurants and grocery stores are a 10 min walk away from the house.","Most places you find in Boston are small however our bedroom suite is large. The bedroom has plush down pillows and a down comforter. The mattress is fitted with a memory foam topper that gives each guest the best sleep. The leather couches are cozy.  The large leather couch can be converted to a bed. The television has been updated to a smart tv therefore you can access most tv programs through there including, HBO, Showtime and Cinemax. If you want to enjoy cable television, there is a tv in the kitchen. The kitchen has a gas burner, dishwasher, garbage disposal, music system, and a space in the fridge to keep your items.","Come experience the comforts of home away from home in our fabulous bedroom suite available in Roslindale, a neighborhood in Boston.  Enjoy sleeping on a large king sized bed with plush down bedding, access to a dishwasher, washer dryer and home gym. The house is incredibly accessible to public transportation and the center of Boston. Free street parking is available right in front of the house. Weekend farmers markets, restaurants and grocery stores are a 10 min walk away from the house. Most places you find in Boston are small however our bedroom suite is large. The bedroom has plush down pillows and a down comforter. The mattress is fitted with a memory foam topper that gives each guest the best sleep. The leather couches are cozy.  The large leather couch can be converted to a bed. The television has been updated to a smart tv therefore you can access most tv programs through there including, HBO, Showtime and Cinemax. If you want to enjoy cable television, there is a tv in the kit",none,"Roslindale is a lovely little neighborhood located right in the city of Boston.  Though a part of the actual city, once you enter it, you feel as though you have escaped to a suburb with friendly neighbors.  The area is conveniently located with access to the city’s bus and subway system.  The Orange Line and Commuter Rail services connect the area to the heart of Boston and the neighboring towns.  It is situated close to shops, restaurants, grocery stores, parks and neighboring towns.  The farmer’s market held in the neighborhood’s center, Roslindale Village, and goes on all summer on Saturday morning.  Vendors of all different types of arts, crafts, and foods come to the neighborhood.  The Arnold Arboretum is a 265 acre park constructed as part of Frederick Law Olmsted’s Emerald Necklace project to provide Boston a connection through neighborhoods through it’s parks.  Jamaica Pond is also part of the emerald necklace which sits at the confluence of Jamaica Plain (a neighboring neighb",Please be mindful of the property as it is old and needs to be treated with the love and care you would give to your own home.  We really hope you enjoy your stay!,There are buses that stop right in front of the house and down the street. We are a convenient bus ride away from the forest hills MBTA stop which is the subway system in Boston. There's free street parking all around the house should you have a car.,"The basement has a washer dryer and gym area. There is a smart TV you can use while in the gym.  Your iPhone can be hooked up to the speakers in the treadmill.  Also, there's a weight bench, weights, and a boxing bag.  On the ground floor, you will have access to the kitchen and sunroom.  There is a designated drawer with pots and pans, utensils and dishes you can use.  The formal living room and dining room are permissible for light usage only. Please do not take any food or drink into these areas other than water. On the 2nd floor, you will have access to your bedroom, attached living room and detached bathroom which is shared.  The trash is located in the kitchen and the recycling bins are located to the left of the dishwasher. Additional trash liners are provided under the sink should you need them. The trash barrels are located in front of the garage should the trash bins get full and you need to throw your garbage out. The blue bin is for recycling.","We do live in the house therefore might be some interaction.  The house is large so it allows the people within it to interact as little or as much as is preferred.  During the weekends, we are less likely to be at home especially during the day.  Some weekends, we may not even be there at all.  Upon your booking we will be able to tell you whether or not we will be there so that you will know what to expect.  We respect the privacy of our guests so we will interact as much or as little with you as you would like.  It is all based on your preference.","- The bathroom and house are shared so please respect the privacy of others living in the home.  The sunroom and the patio in the yard are available for you to use.  There is a Keurig in the Kitchen is free for you to use.  There is a washer and dryer in the basement which you can use.  The formal living or dining areas are available for light use only.  You may only take water into these areas.  Please do not take food into any part of the house other than the kitchen, sunroom or back patio.  Additional guests to the ones already committed to staying on the premises is not permitted.",https://a2.muscache.com/im/pictures/39764190-16f9-4726-bf6a-2027ff35865c.jpg?aki_policy=small,https://a2.muscache.com/im/pictures/39764190-16f9-4726-bf6a-2027ff35865c.jpg?aki_policy=medium,https://a2.muscache.com/im/pictures/39764190-16f9-4726-bf6a-2027ff35865c.jpg?aki_policy=large,https://a2.muscache.com/im/pictures/39764190-16f9-4726-bf6a-2027ff35865c.jpg?aki_policy=x_large,6031442,https://www.airbnb.com/users/show/6031442,Meghna,2013-04-21,"Boston, Massachusetts, United States","My husband and I live on the property.  He’s a lawyer and I work as an hospital administration.  We have an additional housemate who lives there during the week but is usually away on the weekends.  We absolutely love having guests over because it makes our big house feel full.  We love reading, watching movies, listening to music, going to concerts, traveling, eating new and different kinds of food and exploring in general.  In addition, I enjoy singing as my hobby.

We want you too feel at home while you are staying with us.  If we are at the house during your visit, we will provide you with breakfast treats and be there to assist you with any of your needs.  The house if often empty on weekends as we all enjoy spending time outside doing activities, meeting friends/family or traveling.  If we are present, we can provide a hot breakfast but if not, cereal, bread, butter, jam, eggs and milk along with pancake mix will be available.  We will provide a list of contacts you can contact if we are not at home.  Our house is incredibly comfortable and we hope you enjoy the experience of sleeping on the beautiful king sized bed with plush down bedding.  We also hope you enjoy access to the movie channels on the Smart TV which is in the living area attached to your bedroom.  ",within a few hours,100%,50%,f,https://a2.muscache.com/im/pictures/5d430cde-7eb2-4ab7-980a-ef07781cd38c.jpg?aki_policy=profile_small,https://a2.muscache.com/im/pictures/5d430cde-7eb2-4ab7-980a-ef07781cd38c.jpg?aki_policy=profile_x_medium,"",1,1,"['email', 'phone', 'reviews']",t,f,"Boston, MA, United States","",Roslindale,"",Boston,MA,"",Boston,"Boston, MA",US,United States,42.28110618827366,-71.12102117350553,f,House,Private room,4,1.0,1,2,Real Bed,"{TV,Internet,""Wireless Internet"",""Air Conditioning"",Kitchen,""Free Parking on Premises"",Gym,Breakfast,""Indoor Fireplace"",Heating,Washer,Dryer,""Smoke Detector"",""Carbon Monoxide Detector"",""First Aid Kit"",""Safety Card"",""Fire Extinguisher"",Essentials,Shampoo,Hangers,""Hair Dryer"",Iron,""Laptop Friendly Workspace""}","",$75.00,"","",$100.00,$50.00,2,$25.00,1,1125,a week ago,"",6,16,26,98,2016-09-06,1,2016-08-28,2016-08-28,100,10,10,10,10,10,10,f,"","",f,moderate,f,f,1,1
7651065,https://www.airbnb.com/rooms/7651065,20160906204935,2016-09-07,Come Home to Boston,"My comfy, clean and relaxing home is one block away from the bus line, on a quiet residential street.  Private room includes two comfortable single beds.  Full bath and half bath may be shared with 1-2 other guests.  Light breakfast included. AC","Clean, attractive, private room, one block from the bus line, on a quiet, safe street. Two comfy single beds. Full bath and one half bath shared with 1-2 others. Kitchen privileges and breakfast included. Air Conditioned. Five minute walk to shops.","My comfy, clean and relaxing home is one block away from the bus line, on a quiet residential street.  Private room includes two comfortable single beds.  Full bath and half bath may be shared with 1-2 other guests.  Light breakfast included. AC Clean, attractive, private room, one block from the bus line, on a quiet, safe street. Two comfy single beds. Full bath and one half bath shared with 1-2 others. Kitchen privileges and breakfast included. Air Conditioned. Five minute walk to shops. You will have access to the front and side porches, the living room with TV, and the kitchen/dining area. I love my city and really enjoy sharing it with guests!  I live in the home and  share the kitchen and common spaces; my room is on the third floor.  I work full-time, and am out a lot.    I will be happy to provide you any information that would be helpful in navigating Boston.  It's a wonderful city and I hope to help make your visit here enjoyable. I suggest you get the ""What's App?"" phone app",none,"I love the proximity to downtown, the neighborhood pride, safety, nice shops and restaurants within a 8-minute walk.  Roslindale is welcoming to all types of people.  The City website describes it:  ""Once considered a ""garden suburb"" of Boston, today's residents of Roslindale are still attracted to the neighborhood's natural beauty. Locals walk and bike in the Arnold Arboretum, a 265-acre oasis that is part of Frederick Law Olmsted's Emerald Necklace.....Roslindale Village is the city's original Main Street district and now one of the city's most vibrant, featuring several bistros, unique shops, and wireless Internet access. The MBTA Orange Line and Commuter Rail provide commuters with easy access to downtown.""",I have one roommate who lives on the lower level.  She is a nurse and is usually working. Another roommate resides on the same floor as your room - she works a lot too. Please note that - since I work full time - my check-in window is 3 pm to 11 pm.,"From Logan Airport  and South Station you have 3 options to get to my home: 1. Take the airport shuttle to the MBTA. (If you're at South Station, the MBTA is right at the bus station)  Take the MBTA subway to the ""Orange line"" train stop at Forest Hills station (it involves a switch that doesn't cost money).  From there, go to the Washington Street side of the station (not the Hyde Park Avenue side) and get bus #35, 36 or 37.  Get off at the Belgrade Avenue & Walworth Street stop (by 165 Belgrade Avenue).  My home is a 3-minute walk from there.   The MBTA website has a tab ""Rider Tools"" which will give you excellent, detailed routes and times to get anywhere in the city.   2. Take a cab - which usually $35 to 40 from Logan and much less from South Station, unless there is terrible traffic.  3. Or you could follow step #1 to Forest Hills Station, then take a cab from there (they are lined up) to my home (about $5-7). 4. The Silver Line is also an option - you can get their schedule on t","You will have access to the front and side porches, the living room with TV, and the kitchen/dining area.","I love my city and really enjoy sharing it with guests!  I live in the home and  share the kitchen and common spaces; my room is on the third floor.  I work full-time, and am out a lot.    I will be happy to provide you any information that would be helpful in navigating Boston.  It's a wonderful city and I hope to help make your visit here enjoyable. I suggest you get the ""What's App?"" phone app if you are traveling internationally; we can text for free with it.","Please no smoking in the house, porch or on the property (you can go to the nearby corner).  Reasonable quiet after 10:30 pm.  Please remove shoes in the house.",https://a1.muscache.com/im/pictures/97154760/85d71c5c_original.jpg?aki_policy=small,https://a1.muscache.com/im/pictures/97154760/85d71c5c_original.jpg?aki_policy=medium,https://a1.muscache.com/im/pictures/97154760/85d71c5c_original.jpg?aki_policy=large,https://a1.muscache.com/im/pictures/97154760/85d71c5c_original.jpg?aki_policy=x_large,15396970,https://www.airbnb.com/users/show/15396970,Linda,2014-05-11,"Boston, Massachusetts, United States","I work full time for a public school district.   My two wonderful adult sons live in their own homes in Boston.  Camping, bicycling, music, reading, and quiet time with friends and family are what I enjoy.  I love going to church and being part of the church community. Boston is a great place to live and every day I am happy to be here!

My hosting style is ""available"" but not ""hovering""!  Some people want to be completely on their own and others like a little connection and appreciate the host being available.  I am happy to accommodate your style.",within an hour,100%,100%,t,https://a0.muscache.com/im/users/15396970/profile_pic/1399856223/original.jpg?aki_policy=profile_small,https://a0.muscache.com/im/users/15396970/profile_pic/1399856223/original.jpg?aki_policy=profile_x_medium,Roslindale,1,1,"['email', 'phone', 'reviews', 'kba']",t,t,"Durnell Avenue, Boston, MA 02131, United States",Roslindale,Roslindale,"",Boston,MA,02131,Boston,"Boston, MA",US,United States,42.28451220982457,-71.1362580468337,t,House,Private room,2,1.5,1,2,Real Bed,"{Internet,""Wireless Internet"",""Air Conditioning"",Kitchen,Breakfast,Heating,""Smoke Detector"",""Carbon Monoxide Detector"",""First Aid Kit"",Essentials,Shampoo,Hangers,""Hair Dryer"",Iron}","",$79.00,"","","",$15.00,1,$0.00,2,31,2 weeks ago,"",13,34,59,334,2016-09-06,29,2015-08-18,2016-09-01,99,10,10,10,10,9,10,f,"","",f,flexible,f,f,1,2.25

 */

-- Drop the reviews table if it already exists
drop table if exists airbnb.reviews;

-- Create the reviews table
create table airbnb.reviews (
    listing_id bigint,
    id bigint,
    date varchar(10),
    reviewer_id bigint,
    reviewer_name text,
    comments text
);

-- Describe the review table
-- Display the table details such as data types
describe airbnb.reviews;
truncate airbnb.reviews;

-- 1: How many unique listings is provided in the calendar table?
select count(distinct (listing_id))
from calendar;
/*
3585
 */
select * from calendar;
-- 2: How many calendar years do the calendar table span?
describe calendar;
select 'this table has data from ', min(year(dt)) as begining,' to ',max(year(dt)) as current
from calendar;
select CONCAT('This table has data from',
                ' ',
               min(year(dt)),
                ' ',
                'to',
                ' ',
                max(year(dt)),'.')
from calendar;
/*
This table has data from 2016 to 2017.
 */

-- 3.Find listings that are completely available for the entire year (available for 365 days)

select *
from listings
where availability_365 = 365;
 /*
2843445,https://www.airbnb.com/rooms/2843445,20160906204935,2016-09-07,"""Tranquility"" on ""Top of the Hill"""
2384581,https://www.airbnb.com/rooms/2384581,20160906204935,2016-09-07,"Loft bedroom, sleeps 2"
11159585,https://www.airbnb.com/rooms/11159585,20160906204935,2016-09-07,Mark P.Coleman
3997572,https://www.airbnb.com/rooms/3997572,20160906204935,2016-09-07,Room in beautiful JP home
and so on
  */

-- 4: How many listings have been completely booked for the year (0 days available)?
select count(*) listings_com_booked
from listings
where has_availability = 0 and availability_30 = 0 and availability_60 = 0 and availability_90 = 0 and availability_365 = 0;
/*
679
 */
-- 5: Which city has most listings?

select * from listings;

select city,count(*)
from listings
group by 1
order by 2 desc limit 1;
/*
 Boston,3382
 */
-- 6:Which street/st/ave has the most number of listings in Boston?
select * from listings;
describe listings;

select replace(replace(street,'Street','St.'),'Avenue','Ave')
from listings;

select distinct (substring_index(street,' ',1)) Name_of_the_street,count(distinct(id)) No_of_Listings
from listings
where city like '%boston%'
group by 1
order by 2 desc limit 1;
/*
 Commonwealth,110

 */

-- 7.In the calendar table, how many listings charge different prices for weekends and weekdays?
select * from listings limit 5; -- Analysing Data
select * from calendar limit 5; -- Analysing Data
describe calendar;

/*
 Appraoch : The price column is modified into int for sum and average calculation
 Later on using case function,the average for weekend and weekdat are calculated and
 */


select count(distinct (listing_id)) as "Listings with Different Prices"
-- The count only includes listings with different weekend and weekend prices
from
    (
select listing_id,Weekday_Avg,Weekend_Avg
            from (select listing_id,
                         -- To segregate weekend avg and weekday avg
                         avg(case when Weeks = 'WeekDay' then pricemod end) as Weekday_Avg,
                         avg(case when Weeks = 'WeekEnd' then pricemod end) as Weekend_Avg
                  from (select listing_id,
                               -- TO change data type of Price
                               (cast(substring(price, 2, length(price)) as decimal)) as pricemod,
                               case
                                   when dayofweek(dt) in (2, 3, 4, 5, 6) then 'WeekDay'
                                   when dayofweek(dt) in (1, 7) then 'WeekEnd'
                                   end  Weeks
                        from calendar
                        where available = 't'
                        ) sq1
                  group by 1
                 ) sq2
    ) sq3
where Weekday_Avg!=Weekend_Avg;

/*Note: For accurate listings,the price was not rounded off. If the price is rounded off to the nearest zero,
    the number of listings with different weekday and weekend prices will be 1442.

/*
 1858
 */


