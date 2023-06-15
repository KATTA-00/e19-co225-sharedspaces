package com.example.SharedSpaces.controller;

import com.example.SharedSpaces.controller.RequestResponse.ReservationRequest;
import com.example.SharedSpaces.controller.RequestResponse.ReservationResponse;
import com.example.SharedSpaces.controller.RequestResponse.Slot;
import com.example.SharedSpaces.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("reservation")
public class ReservationController {

    private final ReservationService reservationService;

    @Autowired
    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping
    public List<ReservationResponse> getAllReservations(){
        return reservationService.getAllResevations();
    }

    @PostMapping
    public ReservationResponse addResevation(ReservationRequest reservationRequest){
        return  reservationService.hadleReservation(reservationRequest);
    }

    @GetMapping("/user")
    public  List<ReservationResponse> getUserWaitingList(@RequestParam String email){

//        if(!SecurityContextHolder.getContext().getAuthentication().getName().equals(email)){
//            return new ArrayList<>();
//        }

        return reservationService.getUserReservationList(email);
    }

    @GetMapping("/responsible")
    public  List<ReservationResponse> getResponsibleWaitingList(@RequestParam String email){

//        if(!SecurityContextHolder.getContext().getAuthentication().getName().equals(email)){
//            return new ArrayList<>();
//        }

        return reservationService.getResponsibleReservationList(email);
    }

    @DeleteMapping()
    public  String deleteResevation(@RequestParam int spaceID, @RequestParam String date, @RequestParam int startTime, @RequestParam int endTime, @RequestParam String email){

//        if(!SecurityContextHolder.getContext().getAuthentication().getName().equals(email)){
//            return "Error";
//        }

        Slot slot = new Slot(spaceID, date, startTime, endTime);

        return reservationService.reservationDeleteBySlot(slot, email);

    }

}
