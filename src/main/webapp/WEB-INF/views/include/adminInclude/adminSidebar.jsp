<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin/adminHome.do" class="brand-link">
      <img src="#" alt="Logo" class="brand-image img-circle elevation-3"
           style="opacity: 1">
      <span class="brand-text font-weight-light">브랜드 이름</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="adminCustomerList.do" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                회원 목록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminOrderList.do" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                주문 목록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminPaymentList.do" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                결제 목록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminProductList.do" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                상품 목록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminBoardList.do" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                게시글 목록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminProductRegister.do" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                상품 등록
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="adminBoardRegister.do" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                게시글 등록
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
  </aside>