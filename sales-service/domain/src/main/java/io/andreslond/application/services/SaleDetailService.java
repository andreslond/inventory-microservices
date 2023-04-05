package io.andreslond.salesservice.services;

import io.andreslond.dto.SaleDetail;

import java.util.List;

public interface SaleDetailService {

    void addSaleDetail(SaleDetail sale);

    void updateSaleDetail(SaleDetail sale);

    void deleteSaleDetailById(String saleDetailId);

    SaleDetail getSaleDetailById(String saleId);

    List<SaleDetail> getAllSaleDetails();

    List<SaleDetail> getAllSaleDetailsForCustomer(String customerId);

    List<SaleDetail> getAllSaleDetailsForProduct(String productId);

}
