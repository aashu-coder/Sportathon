package com.cognizant.sportsEventMgmt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.sportsEventMgmt.model.Sports;
@Repository
public interface SportsRepository extends JpaRepository<Sports, Integer> {

}
