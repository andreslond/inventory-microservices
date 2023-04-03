package io.andreslond.salesservice.domain.services;

import io.andreslond.salesservice.domain.entities.Sale;

import java.util.List;

public interface SalesService {

    void addSale(Sale sale);

    void updateSale(Sale sale);

    void deleteSaleById(String saleId);

    Sale getSaleById(String saleId);

    List<Sale> getAllSales();

    List<Sale> getAllSalesForCustomer(String customerId);

    List<Sale> getAllSalesForProduct(String productId);


}
