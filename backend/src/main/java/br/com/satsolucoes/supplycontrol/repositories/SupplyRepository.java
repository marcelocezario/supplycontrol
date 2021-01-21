package br.com.satsolucoes.supplycontrol.repositories;

import java.time.Instant;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.satsolucoes.supplycontrol.entities.Brand;
import br.com.satsolucoes.supplycontrol.entities.Supply;
import br.com.satsolucoes.supplycontrol.entities.Vehicle;

@Repository
public interface SupplyRepository extends JpaRepository<Supply, Long> {

	@Transactional(readOnly = true)
	List<Supply> findByMomentBetween(Instant initialDate, Instant finalDate);

	@Transactional(readOnly = true)
	List<Supply> findByVehicleOrderByOdometerDesc(Vehicle vehicle);

	@Transactional(readOnly = true)
	@Query("SELECT DISTINCT sum(obj.litersFilled) FROM Supply obj WHERE obj.vehicle = :vehicle AND obj.odometer > :odometerMin AND obj.odometer < :odometerMax")
	Double sumLitersFilledInTheInterval(Vehicle vehicle, Integer odometerMin, Integer odometerMax);

	@Transactional(readOnly = true)
	@Query("SELECT DISTINCT sum(s.totalLitersWithTheJourney) FROM Supply s "
			+ "INNER JOIN s.vehicle v ON s.vehicle = v "
			+ "INNER JOIN v.vehicleModel vm ON v.vehicleModel = vm "
			+ "WHERE vm.brand = :brand")
	Double sumLitersUsedByBrand(Brand brand);
	
	@Transactional(readOnly = true)
	@Query("SELECT DISTINCT sum(s.totalJourneyFromFullTank) FROM Supply s "
			+ "INNER JOIN s.vehicle v ON s.vehicle = v "
			+ "INNER JOIN v.vehicleModel vm ON v.vehicleModel = vm "
			+ "WHERE vm.brand = :brand")
	Integer sumTravelledDistanceByBrand(Brand brand);

}
