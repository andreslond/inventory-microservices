package io.andreslond.application.services;

import io.andreslond.application.model.sale.Sale;

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
