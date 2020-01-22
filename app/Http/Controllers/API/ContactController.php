<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\About; 
use App\Contact; 
use App\History; 
use Validator;

class ContactController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $Contact = Contact::all(); 
        return $this->sendResponse($Contact->toArray(), '200 Congratution! Contants created successfully.');
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
            'address' => 'required', 
            'email' => 'required',
            'phoneNumber' => 'required',
            'map' => 'required',
            'description' => 'required'
        ]); 


        if($validator->fails()){ 

            return $this->sendError('Validation Error.', $validator->errors()); 
        } 

        $Contact = Contact::create($input); 
        return $this->sendResponse($Contact->toArray(), '200 Congratution! Contact created successfully.');
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

        $Contact = Contact::find($id); 

        if (is_null($Contact)) { 

        return $this->sendError('404! Contact not found.'); 

        } 

        return $this->sendResponse($Contact->toArray(), '200 Congratution! Contact retrieved successfully.');
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
            'address' => 'required', 
            'email' => 'required',
            'phoneNumber' => 'required',
            'map' => 'required',
            'description' => 'required'
        ]);  

        if($validator->fails()){ 
            return $this->sendError('Validation Error.', $validator->errors()); 
        } 

        $Contact->address = $input['address']; 
        $Contact->email = $input['email']; 
        $Contact->phoneNumber = $input['phoneNumber']; 
        $Contact->map = $input['map']; 
        $Contact->description = $input['description']; 
        $Contact->save(); 

        return $this->sendResponse($Contact->toArray(), '200 Congratution! Contact updated successfully.');
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

        $Contact= Contact::find($id);
        $Contact->delete(); 
        return $this->sendResponse($Contact->toArray(), '204! Contact deleted successfully.');
    }
}
