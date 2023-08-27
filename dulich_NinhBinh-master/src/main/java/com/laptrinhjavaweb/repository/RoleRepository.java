package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.management.relation.Role;
import java.util.List;

public interface RoleRepository extends JpaRepository<RoleEntity , Long > {
   List<RoleEntity> findAllByCode(String code);
}
