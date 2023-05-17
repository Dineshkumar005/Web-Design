/*
alter table packages alter column description varchar(500) not null; 
EXEC sp_help 'dbo.packages'; 
*/
DELETE FROM [dbo].[packages] WHERE PackId >0;

INSERT INTO [dbo].[packages] ([PackId], [CompName], [Description], [Category], [NoOfDays], [Imgurl]) VALUES 
	(
	1, 
	N'Bosch Limited', 
	N'Bosch brings together comprehensive expertise in vehicle technology with hardware, software, and services to offer complete mobility solutions.', 
	N'electronics', 
	3, 
	N'https://i0.wp.com/www.enggwave.com/wp-content/uploads/2021/12/Bosch-Office.jpg?fit=840%2C480&ssl=1'
	),
	(
	2, 
	N'Hewlett-Packard Enterprise', 
	N'The Hewlett-Packard Company, commonly shortened to Hewlett-Packard or HP, was an American multinational information technology company headquartered in Palo Alto, California.', 
	N'electronics', 
	3, 
	N'https://th.bing.com/th/id/R.baf61d1487ed08e348b76269167a6f54?rik=icdLxjrLlivGBQ&riu=http%3a%2f%2f3dprint.com%2fwp-content%2fuploads%2f2014%2f10%2fhp2.jpg&ehk=z1joL7tg6JwaOjkbK2SpGz4aKcIJ%2f8FikQPQbFOU%2fYs%3d&risl=&pid=ImgRaw&r=0'
	),
	(
	3, 
	N'Sony India Pvt. Ltd', 
	N'Sony Corporation is the electronics business unit of the Sony Group. It primarily conducts research and development (R&D), planning, designing, manufacturing and marketing for electronics products.', 
	N'electronics', 
	3, 
	N'https://cdn.wccftech.com/wp-content/uploads/2018/04/sony-1920x1269.jpg'
	),
	(
	4, 
	N'Google LLC', 
	N'Google LLC is an American multinational technology company focusing on online advertising, search engine technology,cloud computing, computer software, quantum computing, e-commerce, artificial intelligence, and consumer electronics.', 
	N'information technologys', 
	3, 
	N'https://static-ssl.businessinsider.com/image/5e68ff9554f25c3bc1207ce6-2400/google%20london%20office.jpg'
	),
	(
	5, 
	N'Apple Inc', 
	N'Apple Inc., formerly Apple Computer, Inc., American manufacturer of personal computers, smartphones, tablet computers, computer peripherals, and computer software.It was the first successful personal computer company and the popularizer of the graphical user interface.', 
	N'information technology', 
	3, 
	N'https://3.bp.blogspot.com/-333wVl1lfYg/WtRrZQxoLzI/AAAAAAAAAgo/2qOUw3Oo_9Es9Cf5Jdeeun5UjHwty-P3wCLcBGAs/s1600/Apple%2BLogo%2Bon%2Ba%2BGlass%2BWall%2BBuilding.jpg'
	),
	(
	6, 
	N'ZOHO', 
	N'Zoho Corporation is an Indian multinational technology company that makes computer software and web-based business tools. It is best known for the online office suite offering Zoho Office Suite.', 
	N'information technology', 
	3, 
	N'https://cdn.mos.cms.futurecdn.net/PPaSNYxhoxUn3EwqUm3HfX.jpg'
	),
	(
	7, 
	N'Intel', 
	N'Intel Corporation (commonly known as Intel) is an American multinational corporation. It is one of the developers of the x86 series of instruction sets, the instruction sets found in most personal computer (PCs).', 
	N'hardware', 
	3, 
	N'https://cdn.arstechnica.net/wp-content/uploads/2022/04/GettyImages-1236001587.jpg'
	),
	(
	8, 
	N'Samsung Electronics', 
	N'Samsung Electronics is a multinational electronics and information technology company headquartered in Suwon and the flagship company of the Samsung Group.', 
	N'hardware', 
	3, 
	N'https://techmoran.com/wp-content/uploads/2022/09/Samsung_Electronics.jpg'
	),
	(
	9, 
	N'Toshiba', 
	N'Toshiba Corporation , commonly known as Toshiba and stylized as TOSHIBA, is a Japanese multinational conglomerate corporation.', 
	N'hardware', 
	3, 
	N'https://gumlet.assettype.com/swarajya%2F2021-11%2F9f3303dd-1521-4a15-aa16-6a53ac2e1369%2FToshiba_Corporate_Office_Photo.png?format=auto'
	);
