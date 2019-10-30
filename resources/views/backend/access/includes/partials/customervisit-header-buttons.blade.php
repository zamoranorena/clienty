<div class="pull-right mb-10 hidden-sm hidden-xs">
	{{ link_to_route('admin.operation.visit.visitCustomer', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
    <!--<a data-toggle="modal" data-target="#modal_customer" type="button" class="btn btn-success btn ">Nuevo Cliente</a>-->
    {{ link_to_route('admin.operation.visit.crearcliente', trans('Nuevo cliente con visita'), [], ['class' => 'btn btn-primary btn']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
  
        <ul class="dropdown-menu" role="menu">
           	{{ link_to_route('admin.operation.visit.visitCustomer', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
           	{{ link_to_route('admin.operation.visit.crearcliente', trans('Nuevo Cliente'), [], ['class' => 'btn btn-primary btn']) }}
            <!--<a data-toggle="modal" data-target="#modal_customer" type="button" class="btn btn-success btn ">Nuevo Cliente</a>-->
        </ul>
    </div><!--btn group-->
</div><!--pull right-->

<div class="clearfix"></div>