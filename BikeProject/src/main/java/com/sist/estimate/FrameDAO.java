package com.sist.estimate;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FrameDAO {
   
   @Autowired
   private EstimateMapper estimateMapper;
   
   public List<FrameVO> frameListData(){
      List<FrameVO> list = estimateMapper.frameListData();
      System.out.println(list.get(1).getP_name());
      return list;
      //return estimateMapper.frameListData();
   }
   
   public void insertProduct(String combo, String name, String price, String year) {
      FrameVO vo = new FrameVO();
      switch (combo) {
      case "product_frame":
         vo.setP_name(name);
         vo.setP_price(price);
         vo.setP_regdate(year);
         estimateMapper.insertFrame(vo);
         break;
      case "product_groupset":
         vo.setP_name(name);
         vo.setP_price(price);
         vo.setP_regdate(year);
         estimateMapper.insertGroupset(vo);
         break;
      case "product_wheelset":
         vo.setP_name(name);
         vo.setP_price(price);
         vo.setP_regdate(year);
         estimateMapper.insertWheelset(vo);
         break;
      case "product_comp":
         vo.setP_name(name);
         vo.setP_price(price);
         vo.setP_regdate(year);
         estimateMapper.insertComp(vo);
         break;
      }
   }
}