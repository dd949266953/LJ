package com.fcz.service.dataCenterService;

import java.util.List;

import com.fcz.entity.Car;
import com.fcz.entity.CarPortState;

/**
 * 车位管理接口
 * @author dongshuai
 *
 */
public interface CarStallService {
	/**
	 * 车位信息
	 * @param carNo
	 * @return
	 */
	 List<Car> getCarStallMessage(String carno);
	 
	 /**
	  * 总数量
	  * @return
	  */
	 int getCarCount();
	 /**
	  * 删除
	  * @param carid
	  * @return
	  */
	 int deleteByPrimaryKey(Integer carid);
	 /**
	  * 根据carid查询
	  * @return
	  */
	  List<Car> getCarStallMessageByCarid(int carid);
	  /**
	   * 查询车位状态
	   * @return
	   */
	  List<CarPortState> getAll();
	  

}
