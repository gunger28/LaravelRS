@extends('layout')


@section('content')
    @if(count($users))
        <div class="table-responsive">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Status</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col">action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($users as $user)
                    <tr>

                        <th scope="row">
                           {{$user->id}}
                        </th>
                        <td>{{$user->status }}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->password}}</td>
                        <td style="display: flex;">
                            <form style="margin-right: 5px"   method="get" action="{{ route('deleteNote') }}">
                                <input type="hidden" value="{{$user->id}}" name="id" class="id">
                                <button class="del" type="submit" id="{{$user->id}}">Delete</button>
                            </form>
                            <form  method="get" action="{{ route('editNoteView') }}">
                                <input type="hidden" value="{{$user->id}}" name="id" class="id">
                                <button class="Edit" type="submit" id="{{$user->id}}">Edit</button>
                            </form>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>

        </div><!-- ./table-responsive-->





        {{$users->appends(['s' => request()->s])->links()}}
    @else
        <p>Записей не найдено...</p>
    @endif

@endsection


{{--@extends('layout')--}}


{{--@section('content')--}}
{{--    @if(count($users))--}}
{{--        <div class="table-responsive">--}}
{{--            <table class="table table-hover table-striped">--}}
{{--                <thead>--}}
{{--                <tr>--}}
{{--                    <th scope="col">#</th>--}}
{{--                    <th scope="col">Name</th>--}}
{{--                    <th scope="col">Email</th>--}}
{{--                    <th scope="col">Phone</th>--}}
{{--                </tr>--}}
{{--                </thead>--}}
{{--                <tbody>--}}
{{--                @foreach($users as $user)--}}
{{--                    <tr>--}}
{{--                        <th scope="row">{{$user->id}}</th>--}}
{{--                        <td>{{$user->name }}</td>--}}
{{--                        <td>{{$user->email}}</td>--}}
{{--                        <td>{{$user->phone}}</td>--}}
{{--                    </tr>--}}
{{--                @endforeach--}}
{{--                </tbody>--}}
{{--            </table>--}}

{{--        </div><!-- ./table-responsive-->--}}


{{--        {{$users->appends(['s' => request()->s])->links()}}--}}
{{--    @else--}}
{{--        <p>Записей не найдено...</p>--}}
{{--    @endif--}}

{{--@endsection--}}

