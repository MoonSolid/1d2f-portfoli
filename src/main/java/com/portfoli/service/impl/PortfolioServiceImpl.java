package com.portfoli.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.support.TransactionTemplate;
import com.portfoli.dao.PortfolioDao;
import com.portfoli.domain.Portfolio;
import com.portfoli.service.PortfolioService;

@Component
public class PortfolioServiceImpl implements PortfolioService {
  PortfolioDao portfolioDao;
  TransactionTemplate transactionTemplate;

  public PortfolioServiceImpl(PortfolioDao portfolioDao) {
    this.portfolioDao = portfolioDao;
  }
  
  @Override
  public List<Portfolio> list() throws Exception {
    return portfolioDao.findAll();
  }

  @Override
  public Portfolio get(int boardNumber) throws Exception {
    return portfolioDao.findByNo(boardNumber);
  }

  @Override
  public List<Portfolio> getByMemberNumber(int generalMemberNumber) throws Exception {
    return portfolioDao.findByMember(generalMemberNumber);
  }

  @Override
  public boolean insert(Portfolio portfolio) throws Exception {
    return portfolioDao.insert(portfolio);
  }

  @Override
  public boolean delete(int boardNumber) throws Exception {
    return portfolioDao.delete(boardNumber);
  }

  @Override
  public boolean update(Portfolio portfolio) throws Exception {
    return portfolioDao.update(portfolio);
  }

  @Override
  public int selectListCnt(Portfolio portfolio) throws Exception {
    return portfolioDao.selectListCnt();
  }






}