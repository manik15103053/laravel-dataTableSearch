<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request){

        $query = $request->input('query'); 

        if($request->ajax()){

            $output = "";
            

        $users = User::where('name', 'like', '%' .$query. '%')
                      ->orWhere('email', 'like', '%' .$query. '%')
                      ->orWhere('phone', 'like', '%' .$query. '%')
                      ->orWhere('country', 'like', '%' .$query. '%')
                      ->paginate(10);

           if($users){
                foreach($users as $key => $value){
                   $output .= '<tr>'.
                   
                   '<td>'. $users->firstItem() + $key .'</td>'.
                   '<td>'. $value->name .'</td>'.
                   '<td>'. $value->email .'</td>'.
                   '<td>'. $value->phone .'</td>'.
                   '<td>'. $value->address .'</td>'.
                   '<td>'. $value->country .'</td>'.

                   
                   
                   '</tr>'; 

                }

                return Response($output);
           }           
        }

        $users = User::where('name', 'like', '%' .$query. '%')
        ->orWhere('email', 'like', '%' .$query. '%')
        ->orWhere('phone', 'like', '%' .$query. '%')->paginate(10);

        return view('home', compact('users'));
    }

    public function postSearch(Request $request){

        $query = $request->input('query');
    
        if($request->ajax()){
            $output = "";
    
            $posts = Post::where('name', 'like', '%'.$query.'%')
                            ->orWhere('unit_price', 'like', '%'.$query.'%')
                            ->orWhere('quantity', 'like', '%'.$query.'%')
                            ->orWhere('regular_price', 'like', '%'.$query.'%')
                            ->paginate(10);
    
            if($posts->count() > 0){
                foreach($posts as $key => $post){
                    $output .='<tr>'.
                        '<td>'. ($posts->firstItem() + $key) .'</td>'.
                        '<td>'. $post->name .'</td>'.
                        '<td>'. $post->unit_price .'</td>'.
                        '<td>'. $post->quantity .'</td>'.
                        '<td>'. $post->regular_price .'</td>'.
                        '<td>'. $post->shipping_cost .'</td>'.
                        '<td>'. date('d M Y') .'</td>'.
                        '</tr>';
                }
    
                return response()->json(['data' => $output, 'links' => $posts->links()->toHtml()]);
            } else {
                $output .= '<tr><td colspan="7">No data found</td></tr>';
                return response()->json(['data' => $output]);
            }
        }
    
        $posts = Post::where('name', 'like', '%'.$query.'%')
                        ->orWhere('unit_price', 'like', '%'.$query.'%')
                        ->orWhere('quantity', 'like', '%'.$query.'%')
                        ->orWhere('regular_price', 'like', '%'.$query.'%')
                        ->paginate(10);
    
        return view('search-data', compact('posts'));
    }
    
}
