package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.OnlineCounter;

public interface CounterService {

	void saveOnlineCounter(OnlineCounter theCounter);
	
	List<OnlineCounter> getOnlineCounters();
	
	OnlineCounter getOnlineCounter(int counterId);
	
	void saveOfflineCounter(OfflineCounter theCounter);
	
	List<OfflineCounter> getOfflineCounters();
	
	OfflineCounter getOfflineCounter(int counterId);


}
