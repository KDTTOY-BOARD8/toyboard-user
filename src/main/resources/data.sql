-- 테스트용 회원 추가
insert into board_user_tb (user_id, created_at, updated_at, password, email, nickname, username)
values (1, now(), now(), '$2a$10$ZmEhAXrz68geKq1d24yXqOldesyWfZwkH1du49ARgR5JoOxwG7E0y', 'teset1@test.com',
        'test1-sprout', 'test1'),
       (2, now(), now(), '$2a$10$.SBX6wFcmBEbloFLXEIvjuAKO2V9U2WKRIqdbz7k64U1r4K0hy14u', 'teset2@test.com',
        'test2-great', 'test2'),
       (3, now(), now(), '$2a$10$tik0Pjku4CmVz6Nn5SWb6OvpPanMZjAtiCLqMH8uGinkMGf8p6dAC', 'teset3@test.com',
        'test3-black', 'test3'),
       (4, now(), now(), '$2a$10$q3sdSR5kjWuCp6f31lSJPuDHurej82Zsk4BpUs0QlupprBrTfdaDK', 'admin@admin.com', 'admin',
        'admin')
;

-- 1번 - 새싹회원
-- 2번 - 우수회원
-- 3번 - 블랙회원
-- 4번 - 관리자
insert into board_authority_tb (user_id, authority)
values ((select user_id from board_user_tb where username = 'test1'), 'SPROUT'),
       ((select user_id from board_user_tb where username = 'test2'), 'GREAT'),
       ((select user_id from board_user_tb where username = 'test3'), 'BLACK'),
       ((select user_id from board_user_tb where username = 'admin'), 'ADMIN')
;

-- Test 게시글
insert into board_tb (category, created_at, updated_at, board_id, content, title, user_id, hide)
values ('sprout', now(), now(), 1, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 1',
        1, 0),
       ('sprout', now(), now(), 2, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 2',
        1, 1),
       ('sprout', now(), now(), 3, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 3',
        1, 0),
       ('sprout', now(), now(), 4, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 4',
        1, 1),
       ('sprout', now(), now(), 5, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 5',
        1, 0),
       ('sprout', now(), now(), 6, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 6',
        1, 1),
       ('sprout', now(), now(), 7, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 7',
        1, 0),
       ('sprout', now(), now(), 8, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 8',
        1, 1),
       ('sprout', now(), now(), 9, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Sprout Test Title 9',
        1, 0),
       ('sprout', now(), now(), 10, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 10', 1, 0),
       ('great', now(), now(), 11, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 11',
        2, 0),
       ('great', now(), now(), 12, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 12',
        2, 0),
       ('great', now(), now(), 13, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 13',
        2, 0),
       ('great', now(), now(), 14, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 14',
        2, 0),
       ('great', now(), now(), 15, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 15',
        2, 0),
       ('great', now(), now(), 16, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 16',
        2, 0),
       ('great', now(), now(), 17, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 17',
        2, 0),
       ('great', now(), now(), 18, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 18',
        2, 0),
       ('great', now(), now(), 19, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 19',
        2, 0),
       ('great', now(), now(), 20, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 20',
        2, 0),
       ('sprout', now(), now(), 21, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title21', 1, 1),
       ('sprout', now(), now(), 22, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 22', 1, 0),
       ('sprout', now(), now(), 23, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 23', 1, 1),
       ('sprout', now(), now(), 24, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 24', 1, 0),
       ('sprout', now(), now(), 25, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 25', 1, 1),
       ('sprout', now(), now(), 26, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 26', 1, 0),
       ('sprout', now(), now(), 27, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 27', 1, 1),
       ('sprout', now(), now(), 28, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 28', 1, 0),
       ('sprout', now(), now(), 29, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 29', 1, 0),
       ('sprout', now(), now(), 30, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr',
        'Sprout Test Title 30', 1, 0),
       ('great', now(), now(), 31, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 31',
        2, 0),
       ('great', now(), now(), 32, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 32',
        2, 0),
       ('great', now(), now(), 33, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 33',
        2, 0),
       ('great', now(), now(), 34, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 34',
        2, 0),
       ('great', now(), now(), 35, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 35',
        2, 0),
       ('great', now(), now(), 36, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 36',
        2, 0),
       ('great', now(), now(), 37, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 37',
        2, 0),
       ('great', now(), now(), 38, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 38',
        2, 0),
       ('great', now(), now(), 39, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Great Test Title 39',
        2, 0)
;

insert into comment_tb
    (comment_id, created_at, updated_at, content, board_id, user_id)
values (1, now(), now(), 'comment_test111', '30', '1'),
       (2, now(), now(), 'comment_test2222', '30', '1'),
       (3, now(), now(), 'comment_test33333', '30', '1'),
       (4, now(), now(), 'comment_test44', '30', '1'),
       (5, now(), now(), 'comment_test55555', '30', '2'),
       (6, now(), now(), 'comment_test2222', '30', '1'),
       (7, now(), now(), 'comment_test33333', '30', '2'),
       (8, now(), now(), 'comment_test44', '30', '1'),
       (9, now(), now(), 'comment_test55555', '30', '2')
;

insert into child_comment_tb (child_comment_id, created_at, updated_at, content, comment_id, user_id)
values (1, now(), now(), 'child_comment_test111', 3, '2'),
       (2, now(), now(), 'child_comment_test222', 3, '1'),
       (3, now(), now(), 'child_comment_test3333', 2, '1'),
       (4, now(), now(), 'child_comment_test44', 2, '2'),
       (5, now(), now(), 'child_comment_test55555', 3, '1'),
       (6, now(), now(), 'child_comment_test66', 3, '2')
;