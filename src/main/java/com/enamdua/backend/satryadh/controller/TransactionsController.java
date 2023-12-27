package com.enamdua.backend.satryadh.controller;

import com.enamdua.backend.satryadh.model.CreateTransactionsRequest;
import com.enamdua.backend.satryadh.service.TransactionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TransactionsController {

    @Autowired
    private TransactionsService service;
    @PostMapping("/business/{id}/transactions")
    public CreateTransactionsRequest saveTransactions(@PathVariable int id, @RequestBody CreateTransactionsRequest req) {
        return service.saveTransactions(id,req);
    }


}
