package com.sl.cards.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sl.cards.model.CardsModel;

public interface CardsRepository extends CrudRepository<CardsModel, Long> {
	
	List<CardsModel> findByCustomerId(int customerId);

}
