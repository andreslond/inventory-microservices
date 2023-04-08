package io.andreslond.application.repositories.out;

import io.andreslond.application.model.sale.SaleDetail;

import java.util.List;

public interface SaleDetailRepository {

    void saveSaleDetail(SaleDetail saleDetail);

    void updateSaleDetail(SaleDetail saleDetail);

    void deleteSaleDetailById(String saleDetailId);

    SaleDetail getSaleDetailById(String saleDetailId);

    List<SaleDetail> getAllSaleDetails();

}
