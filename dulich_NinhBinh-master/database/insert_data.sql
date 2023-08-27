use springmvcbasicfree;

insert into role(code,name) values('ADMIN','Quản trị');
insert into role(code,name) values('USER','Người dùng');

insert into user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','trương tùng lâm',1);
insert into user(username,password,fullname,status)
values('nguyenvana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyễn văn A',1);
insert into user(username,password,fullname,status)
values('nguyenvanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyễn văn B',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);

insert into category(id, createdby, createddate, modifiedby, modifieddate, code, name)
values('1', NULL, NULL, NULL, NULL, 'su-kien-mien-phi', 'Sự kiện miễn phí');
insert into category(id, createdby, createddate, modifiedby, modifieddate, code, name)
values('2', NULL, NULL, NULL, NULL, 'dia-diem', 'Địa điểm');
insert into category(id, createdby, createddate, modifiedby, modifieddate, code, name)
values('3', NULL, NULL, NULL, NULL, 'khach-san', 'Khách sạn');
insert into category(id, createdby, createddate, modifiedby, modifieddate, code, name)
values('4', NULL, NULL, NULL, NULL, 'am-thuc', 'Ẩm thực');
insert into category(id, createdby, createddate, modifiedby, modifieddate, code, name)
values('5', NULL, NULL, NULL, NULL, 'su-kien-co-phi', 'Sự kiện có phí');

insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'admin', NULL, 'Nằm trong địa phận của Ghềnh Ráng một địa danh tham quan du lịch kì thú của Bình Định, cách thành phố Quy Nhơn khoảng 3km về phía Đông Nam.', 'Bãi tắm Hoàng  Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp  nên thơ, với địa thế thuận  lợi, gần  các khu nghỉ dưỡng resort nên nó đã trở thành một trong những  địa  điểm  thu hút khách du lịch trong và ngoài nước đến.', 'Bãi tắm Hoàng  Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp  nên thơ, với địa thế thuận  lợi, gần  các khu nghỉ dưỡng resort nên nó đã trở thành một trong những  địa  điểm  thu hút khách du lịch trong và ngoài nước đến.', 'BaiTamHoangHau.jpg', 'Bãi tắm Hoàng Hậu', 'BaiTamHoangHau_nen.jpg', '2');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'uhfguihf', NULL, NULL, 'fgsrgrgt', 'Trải qua nhiều biến cố lịch sử thăng trầm, tháp đã bị phá hủy nặng nề. Tuy nhiên, từ năm 1990 đến năm 1997, Tháp Đôi ở Quy Nhơn đã được trùng tu. Tôn tạo bởi những người thợ lành nghề. Cùng với sự giúp đỡ của các nhà khoa học, khảo cổ học trong nước, các chuyên gia đến từ Ba La. Và sự đầu tư của Nhà nước nên địa điểm này lấy lại được dáng vẻ gần như ban đầu.', 'ThapDoi.png', 'Tháp đôi', NULL, '2');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'Test3', NULL, NULL, 'Tháp Dương Long', 'Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m. Phần thân của các tháp xây bằng gạch, các góc được ghép bởi những tảng đá lớn chạm trổ công phu. Tính quy mô của tháp Dương Long được thể hiện không chỉ ở chiều cao của nó (cao nhất trong các tháp Chăm còn lại ở Việt Nam) mà còn ở lối kiến trúc độc đáo, đặc biệt là các hoa văn, hoạ tiết được khắc tạc trực tiếp trên những tảng đá đồ sộ đặt ngay trên đỉnh tháp với nghệ thuật điêu khắc chạm trổ điêu luyện, các đường nét thể hiện vừa hoành tráng vừa lộng lẫy, vừa tinh tế mềm mại, những con vật và họa tiết trang trí vừa sống động chân thực, vừa huyền ảo kì bí.', 'ThapDuongLong.jpg', 'Tháp Dương Long', NULL, '2');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'Test4', NULL, NULL, 'Ghềnh Ráng Tiên Sa', 'Nằm ở phường Ghềnh Ráng, thành phố Quy Nhơn, Ghềnh Ráng – Tiên Sa nằm cách trung tâm thành phố khoảng 3km về phía Đông-Nam. Điểm đặc biệt của nơi đây chính là quần thể những bãi đá nằm liền kề nhau và những bãi đá tập trung theo đường cong của eo núi Xuân Vân. Nhờ vào vẻ đẹp độc đáo mà Ghềnh Ráng đã được Bộ Văn hóa – Thông tin xếp hạng là di tích quốc gia.', 'GhenhRangTienSa.jpg', 'Ghềnh Ráng - Tiên Sa', NULL, '2');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'admin', NULL, NULL, 'Khánh thành dự án Tổ hợp không gian khoa học', 'Khánh thành dự án Tổ hợp không gian khoa học', 'KhanhThanh1.jpg', 'Khánh thành dự án Tổ hợp không gian khoa học', 'KhanhThanh1_nen.jpg', '1');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'admin', NULL, NULL, 'Lễ hội đường phố Quy Nhơn', 'Lễ hội đường phố Quy Nhơn', 'LeHoiDuongPho1.jpg', 'Lễ hội đường phố Quy Nhơn', 'LeHoiDuongPho1_nen.jpg', '1');
insert into place(createdby, createddate, modifiedby, modifieddate, diachi, content, shortdescription, thumbnail, title, video, category_id)
values(NULL, NULL, 'admin', NULL, NULL, 'Nằm trong địa phận của Ghềnh Ráng một địa danh tham quan du lịch kì thú của Bình Định, cách thành phố Quy Nhơn khoảng 3km về phía Đông Nam.', 'Bãi tắm Hoàng  Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp  nên thơ, với địa thế thuận  lợi, gần  các khu nghỉ dưỡng resort nên nó đã trở thành một trong những  địa  điểm  thu hút khách du lịch trong và ngoài nước đến.', 'Bãi tắm Hoàng  Hậu được thiên nhiên ưu ái ban tặng cho vẻ đẹp  nên thơ, với địa thế thuận  lợi, gần  các khu nghỉ dưỡng resort nên nó đã trở thành một trong những  địa  điểm  thu hút khách du lịch trong và ngoài nước đến.', 'BaiTamHoangHau.jpg', 'Bãi tắm Hoàng Hậu', 'BaiTamHoangHau_nen.jpg', '2');

INSERT INTO `springdata`.`hotel` (`diachi`, `name`, `numberofroom`, `price`, `shortdescription`, `shortdescription02`, `shortdescription03`, `shortdescription04`) VALUES ('16 Nguyễn Huệ, phường Lê Lợi, thành phố Quy Nhơn, tỉnh Bình Định', 'Fleur de Lys', '9', '100', 'Fleur de Lys Hospitality là đơn vị quản lý vận hành theo tiêu chuẩn 4 sao quốc tế sở hữu danh mục gồm nhiều nhà hàng, khách sạn, khu nghỉ dưỡng cao cấp khắp cả nước. Với hình ảnh hoa lys quý phái, biểu tượng cho sự thanh cao, tinh khiết và tràn đầy sức sống, cũng là triết lý của chúng tôi về những giá trị dịch vụ tiện nghi tinh tế gần gũi nhất dành riêng cho Quý Khách hàng.', 'Hồ bơi ngoài trời với độ sâu 1,5m. Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ. Bên cạnh bể bơi có quầy bar phục vụ đồ uống. ', 'Hệ thống liệu trình thư giãn tại spa của resort được thiết kế công phu và đa dạng với nhiều liệu trình từ nhẹ nhàng thư giãn đến vận động cơ bắp để du khách lựa chọn. Với những kỹ thuật viên nhiều năm kinh nghiệm, những lọ tinh dầu cao cấp phối hợp với nền nhạc du dương êm dịu, mọi mệt mỏi của bạn sẽ tan biến trong chốc lát. Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ.', 'Tại nhà hàng La Maison (La Maison Restaurant) của Khách sạn Fleur De Lys Quy Nhơn, bạn sẽ được trải nghiệm những món ngon đậm chất địa phương, những bữa tiệc hải sản tươi xanh màu biển hay những tinh hoa ẩm thực quốc tế trong khung cảnh vừa hiện đại vừa ấm cúng. Mở cửa từ 9 giờ sáng, đóng cửa vào lúc 22 giờ.');
INSERT INTO `springdata`.`hotel` (`diachi`, `name`, `numberofroom`, `orderedroom`, `price`, `shortdescription`) VALUES ('Quốc Lộ 1D, khu phố 1,', 'Casa Marina', '20', '0', '200', 'Tọa lạc tại Ghềnh Ráng, chỉ cách trung tâm thành phố Quy Nhơn khoảng 10km, khu nghỉ dưỡng Casa Marina là địa điểm mới hấp dẫn mang đậm nét quyến rũ với bãi biển dài xanh trong ngập tràn ánh nắng.');
UPDATE `springdata`.`hotel` SET `orderedroom` = '0' WHERE (`id` = '1');
INSERT INTO `springdata`.`hotel` (`diachi`, `name`, `numberofroom`, `orderedroom`, `price`, `shortdescription`) VALUES ('Tổ 3, Khu vực 1, Phường Ghềnh Ráng, tp. Quy Nhơn', 'Mira', '12', '0', '200', 'Tọa lạc tại thành phố Quy Nhơn, cách Bãi Xếp vài bước chân, Mira Bãi Xếp Quy Nhơn - The Hidden Jewel cung cấp chỗ nghỉ với trung tâm thể dục, chỗ đỗ xe riêng miễn phí, khu vườn và sảnh khách chung. Trong số nhiều tiện nghi của chỗ nghỉ này có sân hiên, quầy bar và khu vực bãi biển riêng. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ, dịch vụ đưa đón sân bay, dịch vụ phòng và Wi-Fi miễn phí trong toàn bộ khuôn viên.');

INSERT INTO `springdata`.`place` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('Raon Hotel', 'Nằm ở thành phố Quy Nhơn, cách Bãi biển Quy Nhơn 600 m, RAON Hotel cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí và sân hiên. Khách sạn 4 sao này có dịch vụ tiền sảnh và bàn đặt tour.', 'Raon.jpg', 'Raon Hotel', '3');
INSERT INTO `springdata`.`place` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('Kadupul Hotel', 'Tất cả phòng nghỉ tại đây được trang bị máy điều hòa, TV truyền hình cáp màn hình phẳng, tủ lạnh, ấm đun nước, vòi sen, dép và tủ để quần áo. Mỗi phòng đều có phòng tắm riêng, máy sấy tóc và ga trải giường.', 'Kadupul.jpg', 'Kadupul Hotel', '3');
INSERT INTO `springdata`.`place` (`content`, `shortdescription`, `thumbnail`, `title`) VALUES ('Mira Bãi Xếp', 'Tọa lạc tại Bãi Xép - Phường Ghềnh Ráng - TP Quy Nhơn. Homestay nằm cách biển chỉ 5m, với phong cách thiết kế chủ yếu là Tre, Nứa và các vật liệu đậm chất Mộc đảm bảo sẽ mang lại cho bạn cảm giác thư giãn cũng như hàng loạt không gian sống ảo cực đẹp chỉ có riêng tại Mira Các phòng và suite có kiểu trang trí cổ điển, ánh sáng mặt trời ấm áp và sự hài hòa giữa không gian trong nhà-ngoài trời.', 'MiraHotel.jpg', 'Mira Bãi Xếp');









