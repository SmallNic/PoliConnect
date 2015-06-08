# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Law Maker", "Policy Maker"]

#Fake users
counter = 0
5.times do

  if counter == 2
    counter = 0
  end

  email = Faker::Internet.email
  category = categories.sample

  newUser= User.create!(
  category: category,
  email: email,
  password: "password",
  password_confirmation: "password",
  created_at: Time.zone.now)

  counter += 1
end




#Fake Questions
#5.times do |i|
#  i = 1
#Question.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: User.find(i))
#end


#Fake Responses
#5.times do |i|
#  i = 1
#  body = Faker::Lorem.paragraph
#  user_id = User.find(i).id
#  question_id = Question.find(i).id
#  Response.create!(body: body, user_id: user_id, question_id: question_id)
#end


#Fake Tag
#5.times do |i|
#  name = Faker::Lorem.word
#  question_id = Question.find(1).id
#  Tag.create!(name: name, question_id: question_id)
#end

question1 = Question.create({title:"Extremist organizations and funding", body:"How does Somali extremist organization al-Shabaab get its funding?"})

question2 = Question.create({title:"ISIS and civilians", body:"What threat does ISIS pose to civilians? "})

question3 = Question.create({title:"Counterinsurgency plans", body:"Does the US have effective counterinsurgency strategy?"})

question4 = Question.create({title:"Single-payer health care", body:"Should the US adopt European-style single-payer health care?"})

question5 = Question.create({title:"ISI and Latin America", body:"Can someone quickly explain Import-Substitution-Industrialization? Was it good for Latin America?"})

question6 = Question.create({title:"Economic Theory", body:"(follow up) What is a better theory for economic development?"})


Response.create(
  {body:"Al-Shabaab garners $25 million per year taxing the illicit charcoal trade out of Somalia. Somali charcoal is coveted throughout the Gulf region as a long-burning fuel for smoking in water pipes. Bags of charcoal sell for about $4 in Somalia and about $16 in the UAE or Saudi Arabia. Smugglers pay al-Shabaab $1.50-$2.00 per bag of charcoal smuggled out of the port towns Kismaayo and Barawe. From these taxes, al-Shabaab gets around $25 million of the $250 million charcoal trade.

  Sources:
  The Economist, 'A Charred Harvest,' The Economist, October 11, 2014.
  Anja Shortland, 'Failing UN Charcoal Ban in Somalia Could Take Lessons From Counter-Piracy,' IPI Global Observatory, December 2014.
  Report of the UN Somalia and Eritrea Monitoring Group, Somalia (UN document S/2013/413, 13 October 2013), p. 413", question_id:question1.id})


Response.create({body:"ISIS poses a serious genocidal threat to civilians. The UN reports that ISIS routinely kills members of the Yazidi ethnic group and dumps the bodies in mass graves (http://www.un.org/apps/news/story.asp?NewsID=50369#.VRG_zBDF_bw). Philosophically, ISIS is also willing to kill any person who does not worship conservative Salafi Sunni Islam, which poses an enormous threat to hundreds millions of Shia muslims living in the region (Weiss and Hassan, ISIS, Inside the Army of Terror). Graeme Wood explains further in The Atlantic,

  “Denying the holiness of the Koran or the prophecies of Muhammad is straightforward apostasy. But… [ISIS takes] the position that many other acts can remove a Muslim from Islam. These include, in certain cases, selling alcohol or drugs, wearing Western clothes or shaving one’s beard, voting in an election—even for a Muslim candidate—and being lax about calling other people apostates. Being a Shiite, as most Iraqi Arabs are, meets the standard as well, because the Islamic State regards Shiism as innovation, and to innovate on the Koran is to deny its initial perfection. (The Islamic State claims that common Shiite practices, such as worship at the graves of imams and public self-flagellation, have no basis in the Koran or in the example of the Prophet.) That means roughly 200 million Shia are marked for death. So too are the heads of state of every Muslim country, who have elevated man-made law above Sharia by running for office or enforcing laws not made by God.” (http://www.theatlantic.com/features/archive/2015/02/what-isis-really-wants/384980/)


  ISIS will continue to commit brutal, ethnically- and religiously-based attacks against civilians in the region, constituting genocide.", question_id:question2.id})

Response.create({body:"No. There are numerous limitations to US counterinsurgency (COIN) strategy. General David Petraeus first outlined US COIN strategy in Army Field Manual 3-24 in 2006. In that document, General Petraeus advocates soldiers and Marines participate not only in combat, but also in policing, city planning, economic development, and infrastructure construction. Capable as soldiers and Marines are, they are not cops, city planners, bankers, or construction workers. Soldiers and Marines should be used solely to fight the enemy to create a safe space for other US workers (State Department, USAID, etc) to operate restoring civilian functions in recaptured areas.

    See also: Andrew Bacevich, Washington Rules, Chapter entitled “Counterfeit COIN.”", question_id:question3.id})

Response.create({body:"Yes. Currently, the US spends 17% of GDP on healthcare, while most European nations spend 10% (http://data.worldbank.org/indicator/SH.XPD.TOTL.ZS/countries/1W?display=default).

  Yet, the US does not receive any dramatic benefits from this profligate spending. American life expectancy is lower than that of Canada, the UK, France, and Germany (http://data.worldbank.org/indicator/SP.DYN.LE00.IN)

  Much of the extra spending in US healthcare goes to red tape for different insurances companies. The fractured insurance system in the US means that healthcare incurs huge administrative costs. (http://www.upi.com/Health_News/2013/11/13/US-healthcare-Most-expensive-longest-waits-most-red-tape/30501384398664/)

  The US could dramatically reduce administrative costs by switching to a single-payer system. More of each dollar could be used on actual treatment, rather than administrative costs.

  Furthermore, if the US were to switch to a single-payer system, US doctors offices and hospitals would no longer turn away the ill. In turn, this would encourage the sick to seek primary medical care before illnesses or injuries became life-threatening, which would save the US money. Primary care is significantly less expensive compared to emergency medical care.", question_id:question4.id})

Response.create({body:"Import-Substitution-Industrialization (ISI) was widely used in the 1980’s to spur domestic economic production and foster local industries. Instead of importing basic products, LatAm countries would import raw materials and then manufacture finished goods locally. This allowed fledgling LatAm manufacturers to begin production without international competition. There was no way for a startup shoe company, for example, to compete with Nike or Adidas in the ‘80s, so ISI policies created jobs and growth.

  However, the protectionist policies meant that ISI companies never competed internationally. There was no incentive for local manufacturers to become competitive. Bosses would make strong profits with protectionist policies in their own countries. Competing on the world market, while beneficial to consumers, was not conducive to the bottom line of fledgling manufactures. As a result, these small producers never became globally competitive.", question_id:question5.id})

Response.create({body:"Around the same time, numerous Asian states began export-led growth policies that encouraged all producers to send products onto the world market. This competition fostered better companies and better ideas in Asia. The states would subsidize the countries to help pay for the upfront costs of becoming a world producer, after which these producers would be able to compete worldwide, creating jobs back home.", question_id:question6.id})
