package com.cognizant.sportsEventMgmt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.sportsEventMgmt.model.Event;

public interface EventRepository extends JpaRepository<Event, Integer> {

}
