package com.sl.cards.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sl.cards.model.CardsModel;
import com.sl.cards.model.CustomerModel;
import com.sl.cards.repository.CardsRepository;

@RestController
public class CardsController {
	
	@Autowired
	private CardsRepository cardsRepository;
	
	@PostMapping("/cards")
	public List<CardsModel> getCardDetails(@RequestBody CustomerModel customer){
		List<CardsModel> cards = cardsRepository.findByCustomerId(customer.getCustomerId());
		return cards;
	}

}
