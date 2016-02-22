# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.delete_all

Company.create(
  [
    {
      "name": "Mustard",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1455114908/tmpxdogqv3vysbaww9g3.png",
      "short_description": "The on demand staffing network",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Gavin Fogarty",
      "categories": "Technology, Social Recruiting, Event Management",
      "investors": "Undisclosed",
      "office_locations": "NDRC at the Digital Exchange, Crane Street, Dublin 8",
      "incubator": "NDRC"
    },
    {
      "name": "Boxever",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1407341479/e8h5rkwhe0cnfsmwhppf.jpg",
      "short_description": "Software to analyse customer/client profiles for companies.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Dave O'Flanagan",
      "categories": "Travel, Big Data Analytics, Personalization",
      "investors": "NDRC - Seed, Series A; Tadhgh O'Toole - Angel; Bloom Equity - Angel; Conor Stanley - Angel; Delta Partners - Angel, Series A; Frontline Ventures - Series B; Polaris Partners - Series B; Silicon Valley Bank - Series B",
      "office_locations": "Ashford House, Tara Street, Dublin, Dublin 2; 34 Farnsworth Street, Floor 4, Boston, MA 02110, USA",
      "incubator": "NDRC"
    },
    {
      "name": "Logentries",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1415669358/cfx78b8ybfao4orxttaa.png",
      "short_description": "Real-time log management and analytics",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Viliam Holub, Trevor Parsons",
      "categories": "Business Analytics, Application Performance Monitoring, Big Data Analytics",
      "investors": "NDRC, Seed Polaris Partners - Seed, Series A; Floodgate - Seed, Series A; Frontline Ventures - Series A; RRE Ventures - Series A",
      "office_locations": "26-28 Lomard Street, Dublin 2, Dublin; 34 Farnsworth Street, Floor 4, Boston, MA 02110, USA",
      "incubator": "NDRC"
    },
    {
      "name": "Trustev",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1397752755/f03a27e49c1560c29f3521d5926d163f.jpg",
      "short_description": "Trustev increases sales and stops fraud for e-commerce and financial companies.",
      "headquarters": "Cork",
      "formerly_known_as": "",
      "founders": "Pat Phelan, Chris Kennedy",
      "categories": "Security, E-Commerce, Fraud Detection, Software",
      "investors": "Wayra - Angel, Seed, Convertible Note; Shane Naughton - Seed; Notion Capital - Seed; Mangrove Capital Partners - Seed, Convertible Note; Kevin Abosch - Seed; Greycroft Partners - Seed, Convertible Note; Enterprise Ireland - Seed; David Coallier - Seed; ACT Venture Capital - Seed, Convertible Note",
      "office_locations": "2100 Cork Airport Business Park, Cork; 355 Lexington Avenue, New York, NY 10017, USA; 15 West 28th Street, Floor 8, New York, NY 10001, USA",
      "incubator": "NDRC"
    },
    {
      "name": "Soundwave",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1397750808/76694a4fb67d1d5c5e5438b5a2668811.png",
      "short_description": "Soundwave tracks what songs people are listening to on their smartphones and where in real time",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Aidan Sliney, Craig Watson, Brendan O'Driscoll",
      "categories": "Music, Apps, Analytics, Local, Social Media, Real Time, Location Based Services",
      "investors": "ACT Venture Captal - Seed, Venture; Colin Wiel - Venture; Enterprise Ireland - Seed; Iain MacDonald - Venture; Matthew Le Merle - Seed; Mike Ryan - Venture; NDRC - Seed; Paddy Holahan - Venture; Per Brilloth - Venture; Radical Investments - Seed; Spark Labs Global - Venture; Trevor Bowen - Venture; Xandez Investments LLP - Venture",
      "office_locations": "1 Rathmines Road Upper, Rathmines, Dublin 6, Dublin",
      "incubator": "NDRC"
    },

    {
      "name": "Bizimply",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1413433857/sgrxiqrbqingd8pemeh2.jpg",
      "short_description": "SaaS platform to assist in all aspects of running a business.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Mikey Cannon, Norman Hewson,John Forde",
      "categories": "Enterprise Software, SaaS, Restaurants, Online Scheduling",
      "investors": "NDRC - Seed",
      "office_locations": "St. Martin's House, Waterloo Road, Dublin 4, Dublin",
      "incubator": "NDRC"
    },
    {
      "name": "Storyful",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1398512457/ktvqrctju1se8d5vlg1q.png",
      "short_description": "Social media news agency and destination for the shared curation of news and collaborative storytelling.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Mark Little",
      "categories": "News, Publishing, Media, Social Media",
      "investors": "SOSV - Seed; ACT Venture Capital - Venture",
      "office_locations": "Ferry House, 48 Lower Mount Street, Dublin 2, Dublin",
      "incubator": ""
    },
    {
      "name": "CurrencyFair",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1397180574/437b084cbaf38ffb6920c3c91880b4be.jpg",
      "short_description": "CurrencyFair is a P2P online marketplace enabling individuals and businesses to exchange currencies and send funds to bank accounts.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Sean Barrett, Jonathan Potter, Brett Meyers",
      "categories": "Finance, Virtualization, Peer-to-Peer, P2P Money Transfer",
      "investors": "Frontline Ventures - Seed, Series A; Enterprise Ireland - Venture; Octopus Ventures - Series A",
      "office_locations": "Colm House, 91 Pembroke Rd, Ballsbridge, Dublin 4, Dublin",
      "incubator": ""
    },
    {
      "name": "PageFair",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1417090159/umtr465tbqnet3z9t3sx.png",
      "short_description": "Adblocking will cost more than US$6 billion in 2014. PageFair allows websites to recover some of this lost revenue.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Neil O'Connor, Brian McDonnell, Sean Blanchfield",
      "categories": "Advertising, Software, Digital Media",
      "investors": "Tribal Ventures - Angel, Seed; Frontline Ventures - Angel; Enterprise Ireland - Angel",
      "office_locations": "Unit D, Mount Pleasant Business Park, Mount Pleasant Avenue, Ranelagh, Dublin 6, Dublin",
      "incubator": ""
    },
    {
      "name": "Pointy",
      "logo": "https://crunchbase-production-res.cloudinary.com/image/upload/c_pad,w_250,h_140/v1441267664/hbcjrjrj5vch9bcuygr2.png",
      "short_description": "A Pointy box brings customers to your shop door by automatically displaying your products online.",
      "headquarters": "Dublin",
      "formerly_known_as": "",
      "founders": "Mark Cummins, Charles Bibby",
      "categories": "Wireless, Internet, Services",
      "investors": "Frontline Ventures - Seed",
      "office_locations": "National College of Ireland Business Centre, Mayor Square, IFSC, Dublin 1, Dublin",
      "incubator": ""
    }
  ]
)
