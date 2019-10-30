<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.access.category.index', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
    {{ link_to_route('admin.access.category.create', trans('Crear Categoria'), [], ['class' => 'btn btn-primary btn']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-info btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            {{ trans('Servicios') }} <span class="caret"></span>
        </button>

        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.access.category.index', trans('Todos')) }}</li>
            <li>{{ link_to_route('admin.access.category.create', trans('Crear Categoria')) }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->

<div class="clearfix"></div>