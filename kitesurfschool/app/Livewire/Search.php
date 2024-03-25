<?php

namespace App\Livewire;

use App\Models\User;
use Illuminate\Cache\RateLimiting\Limit;
use Livewire\Component;

class Search extends Component
{

    public $search = "";
    public function render()
    {

        $results = [];
        if (strlen($this->search) >= 1) {
            $results = User::where('name', 'like', '%' . $this->search . '%')->Limit(7)->get();
        }
        return view('livewire.search', [
            'users' => $results
        ]);
    }
}
