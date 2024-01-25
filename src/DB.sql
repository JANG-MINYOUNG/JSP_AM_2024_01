DROP DATABASE IF EXISTS `JSP_AM`;
CREATE DATABASE `JSP_AM`;
USE `JSP_AM`;

# article 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# member 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    loginId CHAR(100) NOT NULL,
    loginPw CHAR(200) NOT NULL,
    `name` CHAR(100) NOT NULL
);

# article TD 생성
INSERT INTO article
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
title = '제목3',
`body` = '내용3';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '회원1';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '회원2';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test3',
loginPw = 'test3',
`name` = '회원3';

#################################################

INSERT INTO article
SET regDate = NOW(),
title = CONCAT('제목__', RAND()),
`body` = CONCAT('내용__',RAND());

SELECT *
FROM article
ORDER BY id DESC;

SELECT *
FROM `member`
ORDER BY id DESC;

SELECT COUNT(*) AS cnt
FROM `member`
WHERE loginId = 'test1';