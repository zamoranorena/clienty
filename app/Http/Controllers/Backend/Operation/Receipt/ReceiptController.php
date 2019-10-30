<?php
namespace App\Http\Controllers\Backend\Operation\Receipt;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Operation\Receipt\Receipt;
class ReceiptController extends Controller
{
    public function index(){
    	$receipts=Receipt::all();
    	return view('backend.receipt.index',compact('receipts'));
    }
}
