package io.andreslond.salesservice.domain.repositories;

import io.andreslond.salesservice.domain.entities.Sale;

import java.util.List;

public interface SalesRepository {

    void saveSale(Sale sale);

    void updateSale(Sale sale);

    void deleteSaleById(String saleId);

    Sale getSaleById(String saleId);

    List<Sale> getAllSales();

}
