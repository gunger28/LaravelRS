@extends('layout')

@section('act')

    @if(count($users) == 0)
        <form method="get" action="{{ route('addNote') }}" style="width: 50%; margin: 0 auto">
            <select id="s" name="s" style="margin-bottom: 5px;">
                <option>admin</option>
                <option>user</option>
            </select>
            <input type="text" class="form-control" id="e" name="e" placeholder="email" style="margin-bottom: 5px;">
            <input type="text" class="form-control" id="p" name="p" placeholder="password" style="margin-bottom: 5px;">
            <button type="submit" class="btn btn-primary btn-block">Add new user</button>
        </form>
    @else
        <form method="get" action="{{ route('editNote') }}" style="width: 50%; margin: 0 auto">
            <select id="s" name="s" style="margin-bottom: 5px;">
                <option>admin</option>
                <option>user</option>
            </select>
            <input type="hidden" name="id" value="{{$users[0]->id}}">
            <input type="text" class="form-control" id="e" name="e" value="{{$users[0]->email}}"
                   style="margin-bottom: 5px;">
            <input type="text" class="form-control" id="p" name="p" value="{{$users[0]->password}}"
                   style="margin-bottom: 5px;">
            <button type="submit" class="btn btn-primary btn-block">Edit user</button>
        </form>
    @endif
@endsection
