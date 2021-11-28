package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.OnlineCounter;

public interface CounterDAO {

	void saveOnlineCounter(OnlineCounter theCounter);
	
	List<OnlineCounter> getOnlineCounters();

	OnlineCounter getOnlineCounter(int counterId);
	
	void saveOfflineCounter(OfflineCounter theCounter);
	
	List<OfflineCounter> getOfflineCounters();

	OfflineCounter getOfflineCounter(int counterId);

}
