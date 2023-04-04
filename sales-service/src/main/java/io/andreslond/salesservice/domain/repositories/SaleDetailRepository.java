package io.andreslond.salesservice.domain.repositories;


import io.andreslond.salesservice.domain.entities.SaleDetail;

import java.util.List;

public interface SaleDetailRepository {

    void saveSaleDetail(SaleDetail saleDetail);

    void updateSaleDetail(SaleDetail saleDetail);

    void deleteSaleDetailById(String saleDetailId);

    SaleDetail getSaleDetailById(String saleDetailId);

    List<SaleDetail> getAllSaleDetails();

}
