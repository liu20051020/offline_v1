DROP TABLE IF EXISTS dws_interaction_sku_favor_add_1d;
CREATE EXTERNAL TABLE dws_interaction_sku_favor_add_1d
(
    `sku_id`             STRING COMMENT 'SKU_ID',
    `sku_name`           STRING COMMENT 'SKU名称',
    `category1_id`       STRING COMMENT '一级品类ID',
    `category1_name`     STRING COMMENT '一级品类名称',
    `category2_id`       STRING COMMENT '二级品类ID',
    `category2_name`     STRING COMMENT '二级品类名称',
    `category3_id`       STRING COMMENT '三级品类ID',
    `category3_name`     STRING COMMENT '三级品类名称',
    `tm_id`              STRING COMMENT '品牌ID',
    `tm_name`            STRING COMMENT '品牌名称',
    `favor_add_count_1d` BIGINT COMMENT '商品被收藏次数'
) COMMENT '互动域商品粒度收藏商品最近1日汇总表'
    PARTITIONED BY (`dt` STRING)
    STORED AS ORC
    LOCATION '/warehouse/gmall/dws/dws_interaction_sku_favor_add_1d'
    TBLPROPERTIES ('orc.compress' = 'snappy');