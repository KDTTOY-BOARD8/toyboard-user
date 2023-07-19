-- 테스트용 회원 추가
insert into board_user_tb (user_id, created_at, updated_at, password, email, nickname, username)
values (1, now(), now(), '$2a$10$ZmEhAXrz68geKq1d24yXqOldesyWfZwkH1du49ARgR5JoOxwG7E0y', 'teset1@test.com',
        'test1nickname', 'test1'),
       (2, now(), now(), '$2a$10$.SBX6wFcmBEbloFLXEIvjuAKO2V9U2WKRIqdbz7k64U1r4K0hy14u', 'teset2@test.com',
        'test2nickname', 'test2'),
       (3, now(), now(), '$2a$10$tik0Pjku4CmVz6Nn5SWb6OvpPanMZjAtiCLqMH8uGinkMGf8p6dAC', 'teset3@test.com',
        'test3nickname', 'test3'),
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
insert into board_tb (created_at, updated_at, board_id, content, title, user_id, hide)
values (now(), now(), 1, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title1', 1, 0),
       (now(), now(), 2, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title2', 1, 1),
       (now(), now(), 3, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title3', 1, 0),
       (now(), now(), 4, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title4', 1, 1),
       (now(), now(), 5, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title5', 1, 0),
       (now(), now(), 6, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title6', 1, 1),
       (now(), now(), 7, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title7', 1, 0),
       (now(), now(), 8, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title8', 1, 1),
       (now(), now(), 9, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title9', 1, 0),
       (now(), now(), 10, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title10', 1, 0),
       (now(), now(), 11, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title11', 2, 0),
       (now(), now(), 12, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title12', 2, 0),
       (now(), now(), 13, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title13', 2, 0),
       (now(), now(), 14, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title14', 2, 0),
       (now(), now(), 15, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title15', 2, 0),
       (now(), now(), 16, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title16', 2, 0),
       (now(), now(), 17, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title17', 2, 0),
       (now(), now(), 18, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title18', 2, 0),
       (now(), now(), 19, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title19', 2, 0),
       (now(), now(), 20, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title20', 2, 0),
       (now(), now(), 21, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title21', 1, 1),
       (now(), now(), 22, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title22', 1, 0),
       (now(), now(), 23, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title23', 1, 1),
       (now(), now(), 24, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title24', 1, 0),
       (now(), now(), 25, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title25', 1, 1),
       (now(), now(), 26, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title26', 1, 0),
       (now(), now(), 27, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title27', 1, 1),
       (now(), now(), 28, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title28', 1, 0),
       (now(), now(), 29, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title29', 1, 0),
       (now(), now(), 30, 'Sprout Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title30', 1, 0),
       (now(), now(), 31, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title31', 2, 0),
       (now(), now(), 32, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title32', 2, 0),
       (now(), now(), 33, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title33', 2, 0),
       (now(), now(), 34, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title34', 2, 0),
       (now(), now(), 35, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title35', 2, 0),
       (now(), now(), 36, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title36', 2, 0),
       (now(), now(), 37, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title37', 2, 0),
       (now(), now(), 38, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title38', 2, 0),
       (now(), now(), 39, 'Great Board User Test Content Loren zcvklerwnnkljzcxv eqwr', 'Test Title39', 2, 0)
;

insert into comment_tb
    (comment_id, created_at, updated_at, content, board_id, user_id)
values (1, now(), now(), 'comment_test', '30', '1'),
       (2, now(), now(), 'comment_test', '30', '1'),
       (3, now(), now(), 'comment_test', '30', '1'),
       (4, now(), now(), 'comment_test', '30', '1'),
       (5, now(), now(), 'comment_test', '30', '1')
;

insert into child_comment_tb (child_comment_id, created_at, updated_at, content, comment_id, user_id)
values (1, now(), now(), 'child_comment_test', 3, '1'),
       (2, now(), now(), 'child_comment_test', 3, '1'),
       (3, now(), now(), 'child_comment_test', 2, '1'),
       (4, now(), now(), 'child_comment_test', 2, '1'),
       (5, now(), now(), 'child_comment_test', 3, '1'),
       (6, now(), now(), 'child_comment_test', 3, '1')
;