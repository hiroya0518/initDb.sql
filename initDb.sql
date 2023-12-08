create table admin_user (
    admin_user_id INT(2) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    admin_login_id VARCHAR(8),
    admin_password VARCHAR(8),
    delete_flag BOOLEAN
);

insert into admin_user(admin_login_id,admin_password,delete_flag)values('aaa','aaa',true);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('bbb','bbb',true);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('ccc','ccc',true);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('ddd','ddd',true);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('eee','eee',false);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('fff','fff',false);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('ggg','ggg',false);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('hhh','hhh',false);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('iii','iii',false);
insert into admin_user(admin_login_id,admin_password,delete_flag)values('jjj','jjj',false);

create table news (
    news_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    news_data DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    news_message VARCHAR(100),
    delete_flag BOOLEAN
);
insert into news(news_message,delete_flag)values('フィールド更新',true);
insert into news(news_message,delete_flag)values('ユーザー数100人突破',true);
insert into news(news_message,delete_flag)values('閲覧者500人突破',true);
insert into news(news_message,delete_flag)values('大阪に新フィールド',true);
insert into news(news_message,delete_flag)values('東京に新フィールド',true);
insert into news(news_message,delete_flag)values('ユーザー数1000人突破',true);
insert into news(news_message,delete_flag)values('※暴言などは控えましょう',true);
insert into news(news_message,delete_flag)values('〇〇フィールドに新ギミック追加',true);
insert into news(news_message,delete_flag)values('関西初の〇〇フィールド完成',true);




create table genre (
    genre_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(15),
    delete_flag BOOLEAN
);
insert into genre(genre_name,delete_flag)values('室内',true);
insert into genre(genre_name,delete_flag)values('室外',true);
insert into genre(genre_name,delete_flag)values('ハンドガン限定',true);
insert into genre(genre_name,delete_flag)values('AK-47限定',true);
insert into genre(genre_name,delete_flag)values('ペイント弾',true);
insert into genre(genre_name,delete_flag)values('敷地面積〇〇以上',true);
insert into genre(genre_name,delete_flag)values('バズーカNG',true);
insert into genre(genre_name,delete_flag)values('手榴弾NG',true);
insert into genre(genre_name,delete_flag)values('ゲーム中のマガジン交換禁止',true);
insert into genre(genre_name,delete_flag)values('セミオートのみ',true);
insert into genre(genre_name,delete_flag)values('フルオートのみ',true);


create table play_style (
    playstyle_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    playstyle_name VARCHAR(15),
    delete_flag BOOLEAN
);
insert into play_style(playstyle_name,delete_flag)values('のんびり',true);
insert into play_style(playstyle_name,delete_flag)values('コスプレ',true);
insert into play_style(playstyle_name,delete_flag)values('ガチ',true);
insert into play_style(playstyle_name,delete_flag)values('観戦が好き',true);
insert into play_style(playstyle_name,delete_flag)values('暴れたい',true);
insert into play_style(playstyle_name,delete_flag)values('チーム戦が好き',true);
insert into play_style(playstyle_name,delete_flag)values('BBQが好き',true);
insert into play_style(playstyle_name,delete_flag)values('いろんな人関わりたい',true);

create table area (
    area_id INT(2) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    area_name VARCHAR(5),
    prefecture_id INT(2),
    FOREIGN KEY (prefecture_id) REFERENCES prefecture(prefecture_id)
);
insert into area(area_name)values('北海道・東北');
insert into area(area_name)values('関東');
insert into area(area_name)values('中部');
insert into area(area_name)values('近畿');
insert into area(area_name)values('中国');
insert into area(area_name)values('四国');
insert into area(area_name)values('九州・沖縄');

create table prefecture (
    prefecture_id INT(2) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    prefecture_name VARCHAR(4)
);
insert into prefecture(prefecture_name)values('北海道');
insert into prefecture(prefecture_name)values('青森県県');
insert into prefecture(prefecture_name)values('秋田県');
insert into prefecture(prefecture_name)values('岩手県');
insert into prefecture(prefecture_name)values('福島県');
insert into prefecture(prefecture_name)values('山形県');
insert into prefecture(prefecture_name)values('宮城県');
insert into prefecture(prefecture_name)values('千葉県');
insert into prefecture(prefecture_name)values('東京都');
insert into prefecture(prefecture_name)values('神奈川県');
insert into prefecture(prefecture_name)values('栃木県');
insert into prefecture(prefecture_name)values('埼玉県');
insert into prefecture(prefecture_name)values('群馬県');
insert into prefecture(prefecture_name)values('茨城県');
insert into prefecture(prefecture_name)values('新潟県');
insert into prefecture(prefecture_name)values('富山県');
insert into prefecture(prefecture_name)values('石川県');
insert into prefecture(prefecture_name)values('福井県');
insert into prefecture(prefecture_name)values('山梨県');
insert into prefecture(prefecture_name)values('長野県');
insert into prefecture(prefecture_name)values('岐阜県');
insert into prefecture(prefecture_name)values('静岡県');
insert into prefecture(prefecture_name)values('愛知県');
insert into prefecture(prefecture_name)values('三重県');
insert into prefecture(prefecture_name)values('滋賀県');
insert into prefecture(prefecture_name)values('京都府');
insert into prefecture(prefecture_name)values('大阪府');
insert into prefecture(prefecture_name)values('兵庫県');
insert into prefecture(prefecture_name)values('奈良県');
insert into prefecture(prefecture_name)values('和歌山県');
insert into prefecture(prefecture_name)values('鳥取県');
insert into prefecture(prefecture_name)values('島根県');
insert into prefecture(prefecture_name)values('岡山県');
insert into prefecture(prefecture_name)values('広島県');
insert into prefecture(prefecture_name)values('山口県');
insert into prefecture(prefecture_name)values('徳島県');
insert into prefecture(prefecture_name)values('香川県');
insert into prefecture(prefecture_name)values('愛媛県');
insert into prefecture(prefecture_name)values('高知県');
insert into prefecture(prefecture_name)values('福岡県');
insert into prefecture(prefecture_name)values('佐賀県');
insert into prefecture(prefecture_name)values('長崎県');
insert into prefecture(prefecture_name)values('熊本県');
insert into prefecture(prefecture_name)values('大分県');
insert into prefecture(prefecture_name)values('宮崎県');
insert into prefecture(prefecture_name)values('鹿児島県');
insert into prefecture(prefecture_name)values('沖縄県');


create table user (
    user_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    line_id VARCHAR(15),
    password VARCHAR(15),
    user_name VARCHAR(15),
    user_introduce VARCHAR(15),
    user_history INT(2),
    icon_picture INT(4),
    delete_flag BOOLEAN,
    prefecture_id INT(2),
    playstyle_id INT(3),
    alert_id INT (5),
    FOREIGN KEY (prefecture_id) REFERENCES prefecture(prefecture_id),
    FOREIGN KEY (playstyle_id) REFERENCES play_style(playstyle_id),
    FOREIGN KEY (alert_id) REFERENCES alert(alert_id)
);

insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('aaa','aaa','test1','初心者です' ,1 ,100 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('bbb','bbb','test2','初心者' ,1 ,101, true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('ccc','ccc','test3','初心者です!!' ,1 ,102 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('sss','sss','test4','ベテランです' ,6 ,103 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('www','www','test5','ベテラン' ,10 ,104 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('rrr','rrr','test6','頑張ります' ,3 ,105 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('yyy','yyy','test7','よろしくお願いします' ,3 ,106 , true);
insert into user(line_id,password,user_name,user_introduce,user_history,icon_picture,delete_flag)values('iii','iii','test8','頑張りましょう' ,3 ,107 , true);

create table field (
    field_id INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    field_name VARCHAR(15),
    field_phone VARCHAR(13),
    field_address VARCHAR(30),
    field_access VARCHAR(30),
    field_time VARCHAR(12),
    field_price  INT(5),
    field_detail VARCHAR(30),
    field_picture INT(3),
    delete_flag BOOLEAN,
    genre_id INT(3),
    prefecture_id INT(2),
    playstyle_id INT(3),
    FOREIGN KEY (genre_id) REFERENCES genre (genre_id),
    FOREIGN KEY (prefecture_id) REFERENCES prefecture (prefecture_id),
    FOREIGN KEY (playstyle_id) REFERENCES play_style (playstyle_id)
);

insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('東京サバゲパーク','09011111111','東京都町田市','町田駅徒歩5分' ,'11:00~23:00' ,5000 ,'広い', 100,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('千葉サバゲパーク','09011111112','東京都町田市','町田駅徒歩6分' ,'10:00~23:00' ,6000 ,'楽しい' ,101,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('栃木サバゲパーク','09011111113','東京都町田市','町田駅徒歩8分' ,'11:00~16:00' ,7000 , '広い',102,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('茨城サバゲパーク','09011111114','東京都町田市','町田駅徒歩10分' ,'9:00~19:00' ,8000 , '広い',103,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('神奈川サバゲパーク','09011111115','東京都町田市','町田駅徒歩7分' ,'5:00~13:00' ,9000 , '広い',104,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('埼玉サバゲパーク','09011111116','東京都町田市','町田駅徒歩13分' ,'6:00~23:00',3000 , '広い',105,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('群馬サバゲパーク','09011111117','東京都町田市','町田駅徒歩9分' ,'14:00~20:00' ,7500 , '広い',106,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('山梨サバゲパーク','09011111118','東京都町田市','町田駅徒歩1分' ,'9:00~18:00' ,15000 , '広い',107,true);
insert into field(field_name,field_phone,field_address,field_access,field_time,field_price,field_detail,field_picture,delete_flag)values('長野サバゲパーク','09011111119','東京都町田市','町田駅徒歩5分' ,'11:00~23:00' ,5500 , '広い',108,true);

create table review (
    review_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    review_comment VARCHAR(50),
    review_score VARCHAR(1),
    review_title VARCHAR(30),
    review_picture VARCHAR(5),    
    delete_flag BOOLEAN,
    genre_id INT(3),
    user_id INT(5),
    field_id INT(3),
    playstyle_id INT(3),
    alert_id INT(5),
    FOREIGN KEY (genre_id) REFERENCES genre (genre_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (field_id) REFERENCES field (field_id),
    FOREIGN KEY (playstyle_id) REFERENCES play_style (playstyle_id),
    FOREIGN KEY (alert_id) REFERENCES alert (alert_id)
);

insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('よかったです',5,'スタッフがよかった' ,100,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('とてもよかったです',5,'フィールドががよかった' ,101,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('めちゃくちゃよかった',4,'参加者がよかった' ,102,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('楽しかった',4,'フィールドが広くてよかった' ,103,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('トイレが汚い',1,'最作でした' ,104,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('フィールドが広い',4,'初参戦' ,105,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('参加者が少なかった',3,'疲れた' ,106,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('満足です',4,'大満足' ,107,true);
insert into review(review_comment,review_score,review_title,review_picture,delete_flag)values('ご飯が美味しかった','5','終始楽しかった' ,108,true);

create table alert (
    alert_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    alert_comment VARCHAR(50),
    delete_flag BOOLEAN
);

insert into alert(alert_comment,delete_flag)values('参加者を侮辱している',true);
insert into alert(alert_comment,delete_flag)values('この人ズルしていました',true);
insert into alert(alert_comment,delete_flag)values('不適切な言動です',true);
insert into alert(alert_comment,delete_flag)values('ユーザー名が不適切',true);
insert into alert(alert_comment,delete_flag)values('言葉遣いが汚い',true);
insert into alert(alert_comment,delete_flag)values('スタッフに失礼',true);
insert into alert(alert_comment,delete_flag)values('悪口ばかり',true);
insert into alert(alert_comment,delete_flag)values('嘘ばかり書いています',true);
insert into alert(alert_comment,delete_flag)values('言葉遣いが悪いです',true);
insert into alert(alert_comment,delete_flag)values('写真が不適切です',true);
insert into alert(alert_comment,delete_flag)values('タイトルが不適切',true);

