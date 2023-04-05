package io.andreslond.application.repositories;


import io.andreslond.dto.SaleDetail;

import java.util.List;

public interface SaleDetailRepository {

    void saveSaleDetail(SaleDetail saleDetail);

    void updateSaleDetail(SaleDetail saleDetail);

    void deleteSaleDetailById(String saleDetailId);

    SaleDetail getSaleDetailById(String saleDetailId);

    List<SaleDetail> getAllSaleDetails();

}
