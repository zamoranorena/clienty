<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.access.user.index', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
    {{ link_to_route('admin.access.user.create', trans('Crear Usuario'), [], ['class' => 'btn btn-primary btn']) }}
    <!--{{ link_to_route('admin.access.user.deactivated', trans('Usuarios Desactivados'), [], ['class' => 'btn btn-warning btn']) }}-->
    {{ link_to_route('admin.access.user.deleted', trans('Usuarios Eliminados'), [], ['class' => 'btn btn-primary btn']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            {{ trans('Usuarios') }} <span class="caret"></span>
        </button>

        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.access.user.index', trans('Todos')) }}</li>
            <li>{{ link_to_route('admin.access.user.create', trans('Crear Usuario')) }}</li>
            <li class="divider"></li>
            <!--<li>{{ link_to_route('admin.access.user.deactivated', trans('Usuarios Desactivados')) }}</li>-->
            <li>{{ link_to_route('admin.access.user.deleted', trans('Usuarios Eliminados')) }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->

<div class="clearfix"></div>