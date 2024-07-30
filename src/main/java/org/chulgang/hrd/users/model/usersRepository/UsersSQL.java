package org.chulgang.hrd.users.model.usersRepository;

public class UsersSQL {
    static final String findAll = "select * from users";

    static final String signUp = "insert into users values(users_seq.nextval,?,?,?,?,?,sysdate,sysdate)";
    static final String modifyMyPage = "update  users set email = ? , full_name = ? , phone = ?, modified_at = sysdate where username = ?";
    static final String loginByEmail ="select * from users where email = ? and password = ?";
    static final String loginByUsername ="select * from users where username =? and password = ?";
    static final String findByPassword = "select username from users where username = ? and password = ?";
    static final String findByEmail = "select username from users where email = ? and password = ?";
    static final String dupplicateByUserName ="select username from users where username = ?";
    static final String insertUserRole = "insert into user_role values(USER_ROLE_SEQ.nextval,? ,? )";
    static final String findByEmailAndPassword = "select id from users where email = ? and password = ?";
   // static final String selectByUserRole = "insert into user_role values(USER_ROLE_SEQ.nextval,? ,? )";
}
