<table class="table table-striped table-hover">
    <tr>
        <th>{{ trans('labels.backend.access.users.tabs.content.overview.avatar') }}</th>
        <td><img src="{{ $user->picture }}" class="user-profile-image" /></td>
    </tr>

    <tr>
        <th>Nombre</th>
        <td>{{ $proveedores->name}}</td>
    </tr>

    <tr>
        <th>E-mail</th>
        <td>{{ $proveedores->email}}</td>
    </tr>

    <tr>
        <th>Teléfono</th>
        <td>{{ $proveedores->telefono}}</td>
    </tr>

    <tr>
        <th>País</th>
        <td>{{ $proveedores->pais}}</td>
    </tr>
    <tr>
        <th>Ciudad</th>
        <td>{{ $proveedores->ciudad}}</td>
    </tr>

    <tr>
        <th>Creado</th>
        <td>{{ $proveedores->created_at}}</td>
    </tr>

    <tr>
        <th>Ultima Actualización</th>
        <td>{{ $proveedores->updated_at}}</td>
    </tr>


</table>