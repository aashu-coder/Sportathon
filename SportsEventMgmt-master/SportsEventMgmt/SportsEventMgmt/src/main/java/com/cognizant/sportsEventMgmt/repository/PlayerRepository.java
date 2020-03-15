package com.cognizant.sportsEventMgmt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.sportsEventMgmt.model.Player;

public interface PlayerRepository extends JpaRepository<Player, Integer> {

}
