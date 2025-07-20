package com.genie.Train.controller;

import com.genie.Train.entity.Train;
import com.genie.Train.service.TrainService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/trains")
public class TrainController {

    private TrainService trainService;
    TrainController (TrainService trainService){
        this.trainService=trainService;
    }
    public List<Train> getAllTrains(){
        return trainService.getAllTrains();

    }
    @PostMapping
    public Train addTrain(@RequestBody Train train)
    {
        return trainService.addTrain(train);
    }
}
