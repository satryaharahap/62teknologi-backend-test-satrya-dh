package com.enamdua.backend.satryadh.service;

import com.enamdua.backend.satryadh.model.CreateTransactionsRequest;
import com.enamdua.backend.satryadh.repository.TransactionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TransactionsService {
    @Autowired
    private TransactionsRepository repository;
    @Transactional
    public CreateTransactionsRequest saveTransactions(int business_id, CreateTransactionsRequest req) {
        CreateTransactionsRequest trans = new CreateTransactionsRequest();
        trans.setBusiness_id(business_id);
        trans.setTransaction(req.getTransaction());
        return repository.save(trans);
    }
}
