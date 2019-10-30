<!DOCTYPE html>
<html class="no-js" lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>@yield('title', app_name())</title>
        <!-- Meta -->
        <meta name="description" content="@yield('meta_description', 'Default Description')">
        <meta name="author" content="@yield('meta_author', 'Tika Travel')">
        @yield('meta')
        <!-- Styles -->
        @yield('before-styles')

        {{ Html::style('css/backend.css') }}
        {{ Html::style("css/font-awesome.min.css") }}

        @yield('after-styles')

        <script>
            window.Laravel = <?php echo json_encode([
                'csrfToken' => csrf_token(),
            ]); ?>
        </script>



    </head>
    <body class="skin-{{ config('backend.theme') }} {{ config('backend.layout') }}">
        @include('includes.partials.logged-in-as')

        <div class="wrapper">
            @include('backend.includes.header')
            @include('backend.includes.sidebar')

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    @yield('page-header')
                    <!--{!! Breadcrumbs::renderIfExists() !!}-->
                </section>
                <!-- Main content -->
                <section class="content">
                    @include('includes.partials.messages')
                    @yield('content')
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            @include('backend.includes.footer')
        </div><!-- ./wrapper -->
        <!-- JavaScripts -->
        @yield('before-scripts')
            {{ Html::script('js/backend.js') }}
            {{ Html::script('js/sweetalert.min.js') }}
            {{ Html::script('js/utils.js') }}
            @include('sweet::alert')
        @yield('after-scripts')
    </body>
</html>