package com.company.AutoServiceDemo.Services;

import com.company.AutoServiceDemo.Domain.User;
import com.company.AutoServiceDemo.Domain.Vehicle;
import com.company.AutoServiceDemo.Repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class VehicleServiceImpl implements VehicleService{

    @Autowired
    VehicleRepository vehicleRepository;

    @Override
    public List<Vehicle> findAllByUser(User user) {
        return vehicleRepository.findAllByUser(user);
    }

    @Override
    public Vehicle findVehicleByPlateNUmber(String plateNumber) {
        return vehicleRepository.findVehicleByPlateNUmber(plateNumber);
    }

    @Override
    public List<Vehicle> getVehiclesByUser(User user){
        return vehicleRepository.getVehiclesByUser(user);
    }

    @Transactional
    public Vehicle saveVehicle(Vehicle vehicle) {
        return vehicleRepository.save(vehicle);
    }


    @Override
    public List<Vehicle> findAllVehicles(){
        return vehicleRepository.findAll();
    }

    @Override
    public Vehicle getVehicleByVehicleId(Long vehicleId) {
        return vehicleRepository.getVehicleByVehicleId(vehicleId);
    }

    @Override
    public void delete(Vehicle vehicle) {
        vehicleRepository.delete(vehicle);
    }

    @Override
    public Vehicle save(Vehicle vehicle) {
        return vehicleRepository.save(vehicle);
    }


}
