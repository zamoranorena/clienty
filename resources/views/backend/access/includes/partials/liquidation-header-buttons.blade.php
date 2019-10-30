<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.liquidation.listar', trans('Todos'), [], ['class' => 'btn btn-primary btn']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            {{ trans('Liquidación') }} <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.liquidation.listar', trans('Todos')) }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->
<div class="clearfix"></div>