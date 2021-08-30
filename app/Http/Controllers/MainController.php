<?php

namespace App\Http\Controllers;

use App\Models\Phonebook;
use App\Models\us;
use Illuminate\Http\Request;

class MainController extends Controller
{

    public function logIn()
    {
        return view('authorization');
    }

    public function index(Request $request)
    {
//        $users = Phonebook::orderBy('name')->paginate(10);
        $users = us::orderBy('id')->paginate(10);
        $curEmail = $request->email;
        $curPass = $request->pass;
        $mes = us::where('email', '=', "{$curEmail}")->where('password', '=', "{$curPass}")->get();
//        dd(count($mes), $curEmail, $curPass);
        if (count($mes) != 0) {
            if ($mes[0]->status == 'admin') {
                return view('home', compact('users'));
            } else {
                $users = [];
                return view('classic');
            }

        } else {
            $mes = "empty shit";
            return view('warning', compact('mes'));
        }

    }

    public function workSpace(Request $request)
    {

        $users = us::orderBy('id')->paginate(10);
        return view('home', compact('users'));


    }

    public function search(Request $request)
    {
//        $users = Phonebook::all();
        $s = $request->s;
        $users = us::where('email', 'LIKE', "%{$s}%")->orderBy('email')->paginate(10);
//        dd($s);
//        dd($users);
        return view('home', compact('users'));
    }

    public function addNoteView(Request $request)
    {

        $users = [];
        return view('act', compact('users'));
    }

    public function addNote(Request $request)
    {

        $s = $request->s;
        $e = $request->e;
        $p = $request->p;
        us::insert(['email' => "$e", 'password' => "$p", 'status' => "$s"]);

        $users = us::orderBy('id')->paginate(10);
        return view('home', compact('users'));
    }

//    public function addNote(Request  $request)
//    {
//
//        $n = $request->n;
//        $e = $request->e;
//        $p = $request->p;
//        Phonebook::insert( ['name' => "$n", 'email' => "$e", 'phone' => "$p"]);
//
//        $users = Phonebook::orderBy('name')->paginate(10);
//        return view('home', compact('users'));
//    }

    public function deleteNote(Request $request)
    {

        $id = $request->id;
        us::where('id', '=', "{$id}")->delete();

        $users = us::orderBy('id')->paginate(10);
        return view('home', compact('users'));
    }

    public function editNoteView(Request $request)
    {

        $id = $request->id;
        $users = us::where('id', '=', "{$id}")->get();
//        dd($users);
        return view('act', compact('users'));
    }

    public function editNote(Request $request)
    {

        $id = $request->id;
        $curEmail = $request->e;
        $curPass = $request->p;
        $curSt = $request->s;
//        dd($id,$curPass,$curEmail,$curSt);
        us::where('id', '=', "$id")->update(
            ['email' => "$curEmail",
                'password' => "$curPass",
                'status' => "$curSt"]);

        $users = us::orderBy('id')->paginate(10);

        return view('home', compact('users'));
    }


    public function btn()
    {

        // dd ("btn clicked");
        return view('classic');
    }
}
