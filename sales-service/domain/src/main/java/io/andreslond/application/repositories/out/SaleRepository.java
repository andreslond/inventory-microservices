package io.andreslond.application.repositories.out;

import io.andreslond.application.model.sale.Sale;

import java.util.List;

public interface SaleRepository {

    void saveSale(Sale sale);

    void updateSale(Sale sale);

    void deleteSaleById(String saleId);

    Sale getSaleById(String saleId);

    List<Sale> getAllSales();

}
