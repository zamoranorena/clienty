<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
   <!-- sidebar: style can be found in sidebar.less -->
   <section class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
         <div class="pull-left image">
            <img src="{{ access()->user()->picture }}" class="img-circle" alt="User Image" />
         </div>
         <!--pull-left-->
         <div class="pull-left info">
            <p>{{ access()->user()->name }}</p>
            <!-- Status -->
            <a href="#"><i class="fa fa-circle text-success"></i>Conectado</a>
         </div>
         <!--pull-left-->
      </div>
      <!--user-panel-->
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
         <li class="{{ active_class(Active::checkUriPattern('admin/dashboard')) }}">
            <a href="{{ route('admin.dashboard') }}">
            <i class="fa fa-dashboard"></i>
            <span>Dashboard</span>
            </a>
         </li>
         @permission('menuconfiguraciones')
         <li class="{{ active_class(Active::checkUriPattern('admin/access/*')) }} treeview">
            <a href="#">
            <i class="fa fa-cogs"></i>
            <span>Configuraciones</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/access/'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/access/*'), 'display: block;') }}">
               @permission('listadodeusuarios')
               <li class="{{ active_class(Active::checkUriPattern('admin/access/user*')) }}">
                  <a href="{{ route('admin.access.user.index') }}">
                  <i class="fa fa-users"></i>
                  <span>Usuarios</span>
                  </a>
               </li>
               @endauth
               @permission('listadoderoles')
               <li class="{{ active_class(Active::checkUriPattern('admin/access/role*')) }}">
                  <a href="{{ route('admin.access.role.index') }}">
                  <i class="fa fa-user-secret"></i>
                  <span>Roles</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
         @permission('menumantenimiento')
         <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/*')) }} treeview">
            <a href="#">
            <i class="fa fa-retweet"></i>
            <span>Mantenimiento</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/maintenance/')) }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/maintenance/*'), 'display: block;') }}">
               @permission('listadodeproveedores')
               <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/provider*')) }}">
                  <a href="{{ route('admin.maintenance.provider.index') }}">
                  <i class="fa fa-newspaper-o"></i>
                  <span>Proveedores</span>
                  </a>
               </li>
               @endauth 
               @permission('listadodeclientes')
               <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/customer*')) }}">
                  <a href="{{ route('admin.maintenance.customer.index') }}">
                  <i class="fa fa-user-circle-o"></i>
                  <span>Clientes</span>
                  </a>
               </li>
               @endauth 
               @permission('listadodeservicios')
               <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/service*')) }}">
                  <a href="{{ route('admin.maintenance.service.index') }}">
                  <i class="fa fa-list-alt"></i>
                  <span>Servicios</span>
                  </a>
               </li>
               @endauth 
               @permission('listadodetiposdepago')
               <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/payments*')) }}">
                  <a href="{{ route('admin.maintenance.payments.index') }}">
                  <i class="fa fa-credit-card-alt"></i>
                  <span>Tipos de Pagos</span>
                  </a>
               </li>
               @endauth 
            </ul>
         </li>
         @endauth 
         @permission('menuclientes')
         <li class="{{active_class(Active::checkUriPattern('admin/operation/visit*')) }} treeview">
            <a href="#">
            <i class="fa fa-bullhorn"></i>
            <span>Visitas</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/operation/visit*'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/operation/visit*'), 'display: block;') }}">
               @permission('asignarvisitas')
               <li class="{{ active_class(Active::checkUriPattern('admin/operation/visitCustomer*')) }}">
                  <a href="{{ route('admin.operation.visit.visitCustomer') }}">
                  <i class="fa fa-id-card"></i>
                  <span>Asignar visitas</span>
                  </a>
               </li>
               @endauth
               @permission('listadodevisitas')
               <li class="{{ active_class(Active::checkUriPattern('admin/operation/visit')) }}">
                  <a href="{{ route('admin.operation.visit.index') }}">
                  <i class="fa fa-list"></i>
                  <span>Listado de visitas</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
         @permission('menuclientes')
         <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/*')) }} treeview">
            <a href="#">
            <i class="fa fa-retweet"></i>
            <span>Clientes</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/maintenance/')) }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/maintenance/*'), 'display: block;') }}">
               @permission('listarclientes')
               <li class="{{ active_class(Active::checkUriPattern('admin/maintenance/customer*')) }}">
                  <a href="{{ route('admin.maintenance.customer.index') }}">
                  <i class="fa fa-user-circle-o"></i>
                  <span>Listado de clientes</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
         @permission('menucotizaciones')
         <li class="{{active_class(Active::checkUriPattern('admin/operation/quote*')) }} treeview">
            <a href="#">
            <i class="fa fa-shopping-cart"></i>
            <span>Cotizaciones</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/operation/quote/'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/operation/quote*'), 'display: block;') }}">
               @permission('listarcotizaciones')
               <li class="{{ active_class(Active::checkUriPattern('admin/operation/quote*')) }}">
                  <a href="{{ route('admin.operation.quote.index') }}">
                  <i class="fa fa-list"></i>
                  <span>Listado de cotizaciones</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
         @permission('menuventas')
         <li class="{{active_class(Active::checkUriPattern('admin/operation/sale*')) }} treeview">
            <a href="#">
            <i class="fa fa-dollar"></i>
            <span>Ventas</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            @permission('listarventas')
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/operation/sale/'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/operation/sale*'), 'display: block;') }}">
               <li class="{{ active_class(Active::checkUriPattern('admin/operation/sale*')) }}">
                  <a href="{{ route('admin.operation.sale.index') }}">
                  <i class="fa fa-list"></i>
                  <span>Listado de ventas</span>
                  </a>
               </li>
            </ul>
            @endauth
         </li>
         @endauth
         @permission('menuliquidaciones')
         <li class="{{active_class(Active::checkUriPattern('admin/liquidation/*')) }} treeview">
            <a href="#">
            <i class="fa fa-file"></i>
            <span>Liquidaciones</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/liquidation/'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/liquidation/*'), 'display: block;') }}">
               <li class="{{ active_class(Active::checkUriPattern('admin/liquidation/listar*')) }}">
                  <a href="{{route('admin.liquidation.listar')}}">
                  <i class="fa fa-list"></i>
                  <span>Listado  liquidaciones</span>
                  </a>
               </li>
               @permission('reportedeutilidades')
               <li class="{{ active_class(Active::checkUriPattern('admin/liquidation/utilidades*')) }}">
                  <a href="{{route('admin.liquidation.utilidades')}}">
                  <i class="fa fa-shopping-bag"></i>
                  <span>Reporte de utilidades</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
         @permission('menucaja')
         <li class="{{active_class(Active::checkUriPattern('admin/box/*')) }} treeview">
            <a href="#">
            <i class="fa fa-inbox"></i>
            <span>Caja</span>
            <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/box/'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/box/*'), 'display: block;') }}">
               @permission('listarecibosdecaja')
               <li class="{{ active_class(Active::checkUriPattern('admin/box/receipt*')) }}">
                  <a href="{{ route('admin.box.receipt.index') }}">
                  <i class="fa fa-list"></i>
                  <span>Recibos de caja</span>
                  </a>
               </li>
               @endauth
               @permission('listarpagosaproveedores')
               <li class="{{ active_class(Active::checkUriPattern('admin/box/proveedores*')) }}">
                  <a href="{{ route('admin.box.receipt.proveedores') }}">
                  <i class="fa fa-bank"></i>
                  <span>Pago de proveedores</span>
                  </a>
               </li>
               @endauth
            </ul>
         </li>
         @endauth
      </ul>
   </section>
   <!-- /.sidebar -->
</aside>