package com.tegen.dao;

import java.util.List;


import com.tegen.entity.HPVResult;

public interface HPVResultDao {

	public List<HPVResult> getInfo(HPVResult hpvr);

	public int getCount();
}
