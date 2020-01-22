<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\About; 
use App\Contact; 
use App\History; 
use Validator;

class AboutController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $About = About::all(); 
        return $this->sendResponse($About->toArray(), '200 Congratution! About us  successfully created.');
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
    public function store(Request $request, About $About)
    {
      
        //
        $input = $request->all(); 
        $validator = Validator::make($input, [ 
            'description' => 'required', 
            'mission' => 'required',
            'goals' => 'required',
            'vision' => 'required'
        ]); 


        if($validator->fails()){ 

            return $this->sendError('Validation Error.', $validator->errors()); 
        } 

        $About = About::create($input); 
        return $this->sendResponse($About->toArray(), '200 Congratulation! About created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, About $About)
    {
        //
    $About = About::find($id); 

    if (is_null($About)) { 

    return $this->sendError('404! About not found.'); 

    } 

    return $this->sendResponse($About->toArray(), '200 Congratulation! About retrieved successfully.');
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
    public function update(Request $request, $id, About $About)
    {
        //
    $input = $request->all(); 
    $validator = Validator::make($input, [ 
            'description' => 'required', 
            'mission' => 'required',
            'goals' => 'required',
            'vision' => 'required'
        ]); 

    if($validator->fails()){ 
        return $this->sendError('Validation Error.', $validator->errors()); 
    } 

    $About->description = $input['description']; 
    $About->mission = $input['mission']; 
    $About->goals = $input['goals']; 
    $About->vision = $input['vision']; 
    $About->save(); 

    return $this->sendResponse($About->toArray(), '200 Congratulation! About updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, About $About)
    {
        //
    $About= About::find($id);
    $About->delete(); 
    return $this->sendResponse($About->toArray(), '204! About deleted successfully.');
    }
}
