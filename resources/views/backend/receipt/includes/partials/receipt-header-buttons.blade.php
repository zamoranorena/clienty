<div class="pull-right mb-10 hidden-sm hidden-xs">
   {{ link_to_route('admin.box.receipt.index', 'Todos', [], ['class' => 'btn btn-primary']) }}
   {{ link_to_route('admin.box.receipt.deleted', 'Recibos Eliminados', [], ['class' => 'btn btn-primary']) }}	
</div><!--pull right-->
<div class="pull-right  hidden-lg hidden-md">
    <div class="btn-group">
        <button type="button" class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            Recibos <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li>{{ link_to_route('admin.box.receipt.index', 'Todos') }}</li>
        </ul>
    </div><!--btn group-->
</div><!--pull right-->
<div class="clearfix"></div>
