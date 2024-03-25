<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    // Definieer de tabelnaam voor het model
    protected $table = 'products';

    // Definieer de velden die massaal toegewezen kunnen worden
    protected $fillable = ['name', 'description', 'price', 'image'];

    // Definieer eventuele aanvullende modellogica hieronder
}
