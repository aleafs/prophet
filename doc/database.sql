
-- 节点信息

DROP TABLE IF EXISTS prophet_node_info;
CREATE TABLE prophet_node_info (
  autokid int(10) unsigned not null auto_increment PRIMARY KEY,
  addtime int(10) unsigned not null default 0,
  modtime int(10) unsigned not null default 0,
  nodeidx1 int(10) unsigned not null default 0,
  nodeidx2 int(10) unsigned not null default 0,
  hashcode char(32) not null default '',
  nodepath text,
  nodedata text,
  UNIQUE KEY idx_node_name (nodeidx1, nodeidx2)
) ENGINE = InnoDB DEFAULT CHARSET=UTF8;

-- SELECT ... FROM prophet_node_info WHERE nodeidx1 = ? AND nodeidx2 = ? AND nodepath = ?
-- SELECT ... FORM prophet_node_info WHERE 

DROP TABLE IF EXISTS prophet_node_access;
CREATE TABLE prophet_node_access (
  autokid int(10) unsigned not null auto_increment PRIMARY KEY,
  node_id int(10) unsigned not null default 0,
) ENGINE = InnoDB DEFAULT CHARSET=UTF8;

