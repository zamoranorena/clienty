@extends ('backend.layouts.app')

@section ('title', 'Perfil Cuenta')

@section('page-header')
    <h1>
        Gestión del perfil
        <small>Mi cuenta</small>
    </h1>
@endsection

@section('content')
	<div class="row">

        <div class="col-xs-12">

            <div class="box box-success">
                <div class="box-header with-border">Mi cuenta</div>

                <div class="panel-body">

                    <div role="tabpanel">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Perfil</a>
                            </li>

                            <!--<li role="presentation">
                                <a href="#edit" aria-controls="edit" role="tab" data-toggle="tab">Actualizar información</a>
                            </li>-->

                            @if ($logged_in_user->canChangePassword())
                                <li role="presentation">
                                    <a href="#password" aria-controls="password" role="tab" data-toggle="tab">Cambiar contraseña</a>
                                </li>
                            @endif
                        </ul>

                        <div class="tab-content">

                            <div role="tabpanel" class="tab-pane mt-30 active" id="profile">
                                @include('frontend.user.account.tabs.profile')
                            </div><!--tab panel profile-->

                            <!--<div role="tabpanel" class="tab-pane mt-30" id="edit">
                                @include('frontend.user.account.tabs.edit')
                            </div>--><!--tab panel profile-->

                            @if ($logged_in_user->canChangePassword())
                                <div role="tabpanel" class="tab-pane mt-30" id="password">
                                    @include('frontend.user.account.tabs.change-password')
                                </div><!--tab panel change password-->
                            @endif

                        </div><!--tab content-->

                    </div><!--tab panel-->

                </div><!--panel body-->

            </div><!-- panel -->

        </div><!-- col-xs-12 -->

    </div><!-- row -->
@endsection