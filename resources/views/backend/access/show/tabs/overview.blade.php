<table class="table table-striped table-hover">
    <tr>
        <th>{{ trans('labels.backend.access.users.tabs.content.overview.avatar') }}</th>
        <td><img src="{{ $user->picture }}" class="user-profile-image" /></td>
    </tr>

    <tr>
        <th>{{ trans('Nombre') }}</th>
        <td>{{ $user->name }}</td>
    </tr>

    <tr>
        <th>{{ trans('E-mail') }}</th>
        <td>{{ $user->email }}</td>
    </tr>

    <tr>
        <th>{{ trans('Estado') }}</th>
        <td>{!! $user->status_label !!}</td>
    </tr>

    <tr>
        <th>{{ trans('Confirmado') }}</th>
        <td>{!! $user->confirmed_label !!}</td>
    </tr>

    <tr>
        <th>{{ trans('Creado') }}</th>
        <td>{{ $user->created_at }} ({{ $user->created_at->diffForHumans() }})</td>
    </tr>

    <tr>
        <th>{{ trans('Ultima Actualización') }}</th>
        <td>{{ $user->updated_at }} ({{ $user->updated_at->diffForHumans() }})</td>
    </tr>
</table>