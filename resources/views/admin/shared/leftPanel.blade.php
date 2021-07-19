<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="{{route('dashboard')}}"><i class="menu-icon fa fa-laptop"></i>Trang chủ</a>
                </li>
                <!-- //User Managerment -->

                <li class="menu-title">Quản lý tài khoản</li>
                @can('user-list')
                <li>
                    <a href="{{route('user.index')}}"> <i class="menu-icon fa fa-users"></i>Tài khoản khách hàng </a>
                </li>
                @endcan
                @can('admin-list')
                <li>
                    <a href="{{route('admin.index')}}"> <i class="menu-icon fa fa-user-secret"></i>Tài khoản quản trị </a>
                </li>
                @endcan
                @can('role-list')
                <li>
                    <a href="{{route('roles.index')}}"> <i class="menu-icon fa fa-users"></i>Nhóm quyền </a>
                </li>
                @endcan
                <!-- //Product -->

                <li class="menu-title">Quản lý sản phẩm</li>
                <li>
                    <a href="{{route('producttype.index')}}"> <i class="menu-icon fa fa-address-card-o"></i>Thể loại sản phẩm</a>
                </li>
                <li>
                    <a href="{{route('product.index')}}"> <i class="menu-icon fa fa-newspaper-o"></i>Sản phẩm</a>
                </li>

                <!-- //Order -->

                <li class="menu-title">Quản lý đơn đặt hàng</li>
                <li>
                    <a href="{{route('order.index')}}"> <i class="menu-icon fa fa-address-card-o"></i>Đơn đặt hàng</a>
                </li>
                <!-- //Other Managerment -->

                <li class="menu-title">Khác</li>
                @can('feedback-list')
                <li>
                    <a href="{{route('feedback.index')}}"> <i class="menu-icon fa fa-commenting-o"></i>Phản hồi</a>
                </li>
                @endcan

            </ul>
        </div>
    </nav>
</aside>
