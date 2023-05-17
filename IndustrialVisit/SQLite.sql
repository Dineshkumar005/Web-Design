-- SQLite
INSERT INTO packages (PackId, CompName, Description, Category, NoOfDays, Imgurl, Number, Location, LocationURL, OfficalURL, Ratings)
VALUES 
(
	1, 
	'Bosch Limited', 
	'Bosch brings together comprehensive expertise in vehicle technology with hardware, software, and services to offer complete mobility solutions.', 
	'electronics', 
	3, 
	'https://i0.wp.com/www.enggwave.com/wp-content/uploads/2021/12/Bosch-Office.jpg?fit=840%2C480&ssl=1',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	2, 
	'Hewlett-Packard Enterprise', 
	'The Hewlett-Packard Company, commonly shortened to Hewlett-Packard or HP, was an American multinational information technology company headquartered in Palo Alto, California.', 
	'electronics', 
	3, 
	'https://th.bing.com/th/id/R.baf61d1487ed08e348b76269167a6f54?rik=icdLxjrLlivGBQ&riu=http%3a%2f%2f3dprint.com%2fwp-content%2fuploads%2f2014%2f10%2fhp2.jpg&ehk=z1joL7tg6JwaOjkbK2SpGz4aKcIJ%2f8FikQPQbFOU%2fYs%3d&risl=&pid=ImgRaw&r=0',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	3, 
	'Sony India Pvt. Ltd', 
	'Sony Corporation is the electronics business unit of the Sony Group. It primarily conducts research and development (R&D), planning, designing, manufacturing and marketing for electronics products.', 
	'electronics', 
	3, 
	'https://cdn.wccftech.com/wp-content/uploads/2018/04/sony-1920x1269.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	4, 
	'Google LLC', 
	'Google LLC is an American multinational technology company focusing on online advertising, search engine technology,cloud computing, computer software, quantum computing, e-commerce, artificial intelligence, and consumer electronics.', 
	'information technology', 
	3, 
	'https://static-ssl.businessinsider.com/image/5e68ff9554f25c3bc1207ce6-2400/google%20london%20office.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	5, 
	'Apple Inc', 
	'Apple Inc., formerly Apple Computer, Inc., American manufacturer of personal computers, smartphones, tablet computers, computer peripherals, and computer software.It was the first successful personal computer company and the popularizer of the graphical user interface.', 
	'information technology', 
	3, 
	'https://3.bp.blogspot.com/-333wVl1lfYg/WtRrZQxoLzI/AAAAAAAAAgo/2qOUw3Oo_9Es9Cf5Jdeeun5UjHwty-P3wCLcBGAs/s1600/Apple%2BLogo%2Bon%2Ba%2BGlass%2BWall%2BBuilding.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	6, 
	'ZOHO', 
	'Zoho Corporation is an Indian multinational technology company that makes computer software and web-based business tools. It is best known for the online office suite offering Zoho Office Suite.', 
	'information technology', 
	3, 
	'https://cdn.mos.cms.futurecdn.net/PPaSNYxhoxUn3EwqUm3HfX.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	7, 
	'Intel', 
	'Intel Corporation (commonly known as Intel) is an American multinational corporation. It is one of the developers of the x86 series of instruction sets, the instruction sets found in most personal computer (PCs).', 
	'hardware', 
	3, 
	'https://cdn.arstechnica.net/wp-content/uploads/2022/04/GettyImages-1236001587.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	8, 
	'Samsung Electronics', 
	'Samsung Electronics is a multinational electronics and information technology company headquartered in Suwon and the flagship company of the Samsung Group.', 
	'hardware', 
	3, 
	'https://techmoran.com/wp-content/uploads/2022/09/Samsung_Electronics.jpg',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	9, 
	'Toshiba', 
	'Toshiba Corporation , commonly known as Toshiba and stylized as TOSHIBA, is a Japanese multinational conglomerate corporation.', 
	'hardware', 
	3, 
	'https://gumlet.assettype.com/swarajya%2F2021-11%2F9f3303dd-1521-4a15-aa16-6a53ac2e1369%2FToshiba_Corporate_Office_Photo.png?format=auto',
	
	'1234567890',
	'Loctation',
	'location URL',
	'www....com',
	4.6
	),
	(
	10, 
	'WowMakers', 
	'WowMakers is a specialised User Experience design agency. We design apps and websites used and loved by millions, enterprise software that doesnot suck and delightful digital experiences that drives growth.', 
	'information technology', 
	3, 
	'https://www.wowmakers.com/wowmakers-logo.svg',
	'+91 95260 47775',
	'269AB1 Mulakkampilly Road, Near CSEZ Chittethukara Kerala 682037',
	'LOC URL',
	'https://www.wowmakers.com/',
	4.6
	);


INSERT INTO places (pid, PackId, Day, PlaceName, Time, ImgUrl, Description, Location, LocationURL)
VALUES (
    1,
    1,
    1,
    'WowMakers',
    '9:30 AM - 12:30 PM',
    'https://www.wowmakers.com/wowmakers-logo.svg',
    'WowMakers is a specialised User Experience design agency. We design apps and websites used and loved by millions, enterprise software that doesnot suck and delightful digital experiences that drives growth.',
    '269AB1 Mulakkampilly Road, Near CSEZ Chittethukara Kerala 682037',
    'Loc URl'
),
	(
		2,
		1,
		1,
		'LULU MALL',
		'1:30 PM - 3:30 PM',
		'https://static.tnn.in/photo/msid-92690330,imgsize-81892,updatedat-1657079475709,width-1280,height-720,resizemode-75/92690330.jpg',
		'LuLu International Shopping Mall is a shopping mall located in Kochi, Kerala. It is the Second largest shopping mall in India in terms of total area.With an average daily footfall of more than 80,000, it is one of the most visited places in Kerala',
		'34/1000, Old NH 47, Nethaji Nagar, Edapally, Kochi',
		'https://www.bing.com/maps?&mepi=0~~Unknown~Address_Link&ty=18&q=LuLu%20International%20Shopping%20Mall&ss=ypid.YN4070x13948155602637407627&ppois=10.014163970947266_76.30377960205078_LuLu%20International%20Shopping%20Mall_YN4070x13948155602637407627~&cp=10.014164~76.30378&v=2&sV=1'
	),
	(
		3,
		1,
		1,
		'Kovalam Beach',
		'4:30 PM - 6:00 PM',
		'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/20/44/7f/cherai-beach.jpg?w=1200&h=-1&s=1',
		'Kovalam has three beaches separated by rocky outcroppings in its 17 km coastline, the three together form the crescent of the Kovalam beach.',
		'Trivandrum, Kerala',
		'Loc URL'
	),
	(
		4,
		1,
		2,
		'Periyar National Park',
		'9:00 AM - 12:00 PM',
		'https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2017/04/Landscape-of-Periyar-National-Parkss11042017.jpg',
		'Periyar National Park and Wildlife Sanctuary (PNP) is a protected area located in the districts of Idukki and Pathanamthitta in Kerala, India. It is notable as an elephant reserve and a tiger reserve.',
		'Kerala',
		'Loc URL'
	),
	(
		5,
		1,
		2,
		'Vembanad Lake',
		'1:30 PM - 4:00 PM',
		'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,q_auto/v1/filestore/74pjclsetgbtg2a8bzn0o3wyhh72_DSC_4506.jpg',
		'Vembanad is the longest lake in India, as well as the largest lake in the state of Kerala. The lake has an area of 230 square kilometers and a maximum length of 96.5 km. Spanning several districts in the state of Kerala, it is known as Vembanadu Lake in Kottayam, Vaikom, Changanassery,etc.',
		'Kayippuram, Muhamma, Alleppey, Kerala',
		'Loc URL'
	),
	(
		6,
		1,
		3,
		'Kashi Art Gallery',
		'9:30 AM - 12:00 PM',
		'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/98/b4/2e/very-good-arts.jpg?w=1200&h=-1&s=1',
		'Kashi Art Gallery is located in Kochi (Cochin), Kerala, India. It is a pioneer of Fort Cochin’s art revival and displays changing exhibitions of local artists in a creatively restored Dutch heritage house, attached to one of Kerala’s most fabulous cafes.',
		'Bugar Street, Fort, Kochi, Kerala',
		'Loc URL'
	),
	(
		7,
		1,
		3,
		'Athirapilly Falls',
		'1:30 PM - 3:00 PM',
		'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/02/99/1a/athirappilly-falls.jpg?w=500&h=400&s=1',
		'Athirapilly Falls, is situated in Athirapilly Panchayat in Chalakudy Taluk of Thrissur District in Kerala, India on the Chalakudy River, which originates from the upper reaches of the Western Ghats at the entrance to the Sholayar ranges.',
		'Athirapilly, Chalakudy Taluk, Thrissur District, Kerala, India',
		'Loc URL'
	);