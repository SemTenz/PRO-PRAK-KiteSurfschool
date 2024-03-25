<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product; // Zorg ervoor dat je het juiste model importeert

class ProductController extends Controller
{
    /**
     * Show the product details.
     *
     * @param  int  $id
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        // Haal het product op uit de database op basis van het meegegeven ID
        $product = Product::findOrFail($id);

        // Geef de productdetails door aan de productweergavepagina
        return view('product.show', compact('product'));
    }
}
