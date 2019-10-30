<div class="pull-right mb-10 hidden-sm hidden-xs">
    {{ link_to_route('admin.operation.quote.index', trans('Todos'), [], ['class' => 'btn btn-primary']) }}
    {{ link_to_route('admin.operation.quote.desactivated', trans('Cotizaciones Elimindas'), [], ['class' => 'btn btn-primary']) }}
</div><!--pull right-->

<div class="pull-right mb-10 hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            Cotización<span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.operation.quote.index', trans('Todos')) }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->
<div class="clearfix"></div>