package com.portfoli.service;

import com.portfoli.domain.CompanyMember;
import com.portfoli.domain.GeneralMember;
import com.portfoli.domain.Member;

public interface MemberService {

  int add(Member member, GeneralMember generalMember) throws Exception;

  void add(CompanyMember companyMember) throws Exception;

  GeneralMember get(String email, String password) throws Exception;

}