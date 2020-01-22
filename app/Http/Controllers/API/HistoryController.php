<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\About; 
use App\Contact; 
use App\History; 
use Validator;

class HistoryController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $History = History::all(); 
        return $this->sendResponse($History->toArray(), '200 Congratution! History is made successfully.');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $input = $request->all(); 
    $validator = Validator::make($input, [ 
        'title' => 'required', 
        'description' => 'required' 
    ]); 


    if($validator->fails()){ 

        return $this->sendError('Validation Error.', $validator->errors()); 
    } 

    $History = History::create($input); 
    return $this->sendResponse($History->toArray(), '200 Congratution! History created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //

        $History = History::find($id); 

        if (is_null($History)) { 

        return $this->sendError('404! History not found.'); 

        } 

        return $this->sendResponse($History->toArray(), '200 Congratution! History retrieved successfully.'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

    $input = $request->all(); 
    $validator = Validator::make($input, [ 
        'title' => 'required', 
        'description' => 'required' 
    ]); 

    if($validator->fails()){ 
        return $this->sendError('Validation Error.', $validator->errors()); 
    } 

    $History->title = $input['title']; 
    $History->description = $input['description']; 
    $History->save(); 

    return $this->sendResponse($History->toArray(), '200 Congratution! History updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $History= History::find($id);
        $History->delete(); 
        return $this->sendResponse($History->toArray(), '204! History deleted successfully.');
    }
}
