package com.tegen.dao;

import java.util.List;
import com.tegen.entity.HPVIsNegative;

public interface HPVIsNegativeDao {

		public List<HPVIsNegative> getInfo(HPVIsNegative hpvis);

		public int getCount();
		
}
