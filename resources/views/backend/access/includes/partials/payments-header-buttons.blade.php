<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.maintenance.payments.index', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
    <a data-toggle="modal" data-target="#crearpago" type="button" class="btn btn-success btn ">Crear Pago</a>
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            {{ trans('Usuarios') }} <span class="caret"></span>
        </button>

        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.maintenance.payments.index', trans('Todos')) }}</li>
            <a data-toggle="modal" data-target="#modal_customer" type="button" class="btn btn-success btn ">Crear Pago</a>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->

<div class="clearfix"></div>