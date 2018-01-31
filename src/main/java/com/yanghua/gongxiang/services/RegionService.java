package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.BasProvinces;
import com.yanghua.gongxiang.bean.BasRegions;
import com.yanghua.gongxiang.dao.BasProvincesMapper;
import com.yanghua.gongxiang.dao.BasRegionsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegionService {
    @Autowired
    BasRegionsMapper regionsMapper;

    public List<BasRegions> getAll(){
        List<BasRegions> regions = regionsMapper.selectByExample(null);
        return regions;
    }

    public String getProvinceIds(Integer regionId) {
        BasRegions basRegions = regionsMapper.selectByPrimaryKey(regionId);
        return basRegions.getProvIds();
    }

    /**
     * 向管理区域中添加省份，添加成功返回true，否则返回false
     * @param regionId
     * @param provinceId
     * @return
     */
    public boolean insertProvince(Integer regionId, String provinceId) {
        BasRegions basRegions=new BasRegions();
        BasRegions region = regionsMapper.selectByPrimaryKey(regionId);
        String origionProvinIds=region.getProvIds();
        System.out.println(origionProvinIds);
        if(origionProvinIds.equals("")){
            basRegions.setProvIds(provinceId);
            basRegions.setId(regionId);
            regionsMapper.updateByPrimaryKeySelective(basRegions);
            return true;
        }else{
            if(origionProvinIds.contains(provinceId)){
                return false;
            }else{
                basRegions.setProvIds(region.getProvIds()+","+provinceId);
                basRegions.setId(regionId);
                regionsMapper.updateByPrimaryKeySelective(basRegions);
                return true;
            }
        }


    }

    /**
     * 从管理区域表中删除省份，删除成功返回true，否则返回false
     * @param regionID
     * @param provinceId
     * @return
     */
    public boolean deleteProvince(Integer regionID, String provinceId) {
        BasRegions region = regionsMapper.selectByPrimaryKey(regionID);
        BasRegions updateRegoin=new BasRegions();
        updateRegoin.setId(regionID);
        String oriProvincesIds=region.getProvIds();
        String updateProvicesIds="";
        if(oriProvincesIds.contains(provinceId)){
            String[] split = oriProvincesIds.split(",");
            for(int i=0;i<split.length;i++){
                if(split[i].equals(provinceId)){
                    continue;
                }
                split[i]=split[i]+",";
                updateProvicesIds+=split[i];
            }
            updateProvicesIds = updateProvicesIds.substring(0, updateProvicesIds.length() - 1);
            updateRegoin.setProvIds(updateProvicesIds);
            regionsMapper.updateByPrimaryKeySelective(updateRegoin);
            return true;
        }else{
            return false;
        }
    }
}
