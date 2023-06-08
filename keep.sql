USE api;
// 記帳主頁
CREATE TABLE keep(
	keep_id varchar(36) NOT NULL,
    owner_id varchar(10) NOT NULL,
    is_income tinyint(1) NOT NULL DEFAULT 0,
    amount int NOT NULL DEFAULT 0,
    keep_type varchar(36),
    pay_type varchar(36),
    memo varchar(255),
    is_deleted tinyint(1) DEFAULT 0,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp,
    PRIMARY KEY(keep_id),
    FOREIGN KEY(keep_type) REFERENCES kType(type_id),
    FOREIGN KEY(pay_type) REFERENCES kpType(type_id),
    FOREIGN KEY(owner_id) REFERENCES users(id)
);

// 記帳類型
CREATE TABLE kType(
    type_id varchar(36) NOT NULL,
    title varchar(255) NOT NULL,
    is_deleted tinyint(1) DEFAULT 0,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp,
    PRIMARY KEY(type_id)
);
// 支出/收入類型 
CREATE TABLE kpType(
    type_id varchar(36) NOT NULL,
    title varchar(255) NOT NULL,
    is_deleted tinyint(1) DEFAULT 0,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp,
    PRIMARY KEY(type_id)
);
// 成員
CREATE TABLE kMember(
    member_id varchar(36) NOT NULL,
    keep_id varchar(36) NOT NULL,
    member_name varchar(50) NOT NULL,
    is_deleted tinyint(1) DEFAULT 0,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp,
    PRIMARY KEY(member_id),
    FOREIGN KEY(keep_id) REFERENCES keep(keep_id)
);
// 記帳圖檔
CREATE TABLE kImages(
    image_id varchar(36) NOT NULL,
    keep_id varchar(36) NOT NULL,
    src TEXT NOT NULL,
    is_deleted tinyint(1) DEFAULT 0,
    PRIMARY KEY(image_id),
    FOREIGN KEY(keep_id) REFERENCES keep(keep_id)
);
// 分享
CREATE TABLE kShare(
    share_id varchar(36) NOT NULL,
    owner_id varchar(10) NOT NULL,
    share_with varchar(10) NOT NULL,
    is_disabled tinyint(1) DEFAULT 0,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(share_id),
    FOREIGN KEY(owner_id) REFERENCES users(id),
)