<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.access.role.index', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
    {{ link_to_route('admin.access.role.create', trans('Crear Rol'), [], ['class' => 'btn btn-primary btn']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            {{ trans('menus.backend.access.roles.main') }} <span class="caret"></span>
        </button>

        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.access.role.index', trans('Todos')) }}</li>
            <li>{{ link_to_route('admin.access.role.create', trans('Crear Rol')) }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->

<div class="clearfix"></div>