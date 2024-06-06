package com.wjy.usercenter.sharding;

import org.apache.shardingsphere.infra.util.exception.ShardingSpherePreconditions;
import org.apache.shardingsphere.sharding.algorithm.sharding.ShardingAutoTableAlgorithmUtil;
import org.apache.shardingsphere.sharding.api.sharding.standard.PreciseShardingValue;
import org.apache.shardingsphere.sharding.api.sharding.standard.RangeShardingValue;
import org.apache.shardingsphere.sharding.api.sharding.standard.StandardShardingAlgorithm;
import org.apache.shardingsphere.sharding.exception.algorithm.sharding.ShardingAlgorithmInitializationException;

import java.util.Collection;
import java.util.Optional;
import java.util.Properties;

public class CustomDBHashModShardingAlgorithm implements StandardShardingAlgorithm<Comparable<?>> {

    private static final String TOTAL_TABLE_COUNT_KEY = "total-table-count";
    private static final String TABLE_COUNT_KEY = "table-count";

    // 总共多少张表
    private int totalTableCount;
    // 一个库中多少张表
    private int tableCount;

    @Override
    public void init(Properties props) {
        this.totalTableCount = getTotalTableCount(props);
        this.tableCount = getTableCount(props);
    }

    @Override
    public String doSharding(Collection<String> availableTargetNames, PreciseShardingValue<Comparable<?>> shardingValue) {
        String suffix = String.valueOf(hashShardingValue(shardingValue.getValue()) % totalTableCount / tableCount);
        return ShardingAutoTableAlgorithmUtil.findMatchedTargetName(availableTargetNames, suffix, shardingValue.getDataNodeInfo()).orElse(null);
    }

    @Override
    public Collection<String> doSharding(Collection<String> collection, RangeShardingValue<Comparable<?>> rangeShardingValue) {
        return collection;
    }

    @Override
    public Optional<String> getAlgorithmStructure(String dataNodePrefix, String shardingColumn) {
        return StandardShardingAlgorithm.super.getAlgorithmStructure(dataNodePrefix, shardingColumn);
    }


    @Override
    public String getType() {
        return "CUSTOM";
    }

    @Override
    public Collection<String> getTypeAliases() {
        return StandardShardingAlgorithm.super.getTypeAliases();
    }

    @Override
    public boolean isDefault() {
        return StandardShardingAlgorithm.super.isDefault();
    }

    private int getTotalTableCount(Properties props) {
        ShardingSpherePreconditions.checkState(props.containsKey(TOTAL_TABLE_COUNT_KEY), () -> new ShardingAlgorithmInitializationException(getType(), "total table count cannot be null."));
        return Integer.parseInt(props.getProperty(TOTAL_TABLE_COUNT_KEY));
    }

    private int getTableCount(Properties props) {
        ShardingSpherePreconditions.checkState(props.containsKey(TABLE_COUNT_KEY), () -> new ShardingAlgorithmInitializationException(getType(), "table count cannot be null."));
        return Integer.parseInt(props.getProperty(TABLE_COUNT_KEY));
    }

    private long hashShardingValue(Object shardingValue) {
        return Math.abs(shardingValue.hashCode());
    }
}
