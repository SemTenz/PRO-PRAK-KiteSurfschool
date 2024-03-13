<div id="Search">
    <form class="d-flex" role="search">
        <input wire:model.live="search" class="form-control me-2" type="search" placeholder="search" aria-label="search">

    </form>
    @if (sizeof($users) > 0)
    <div class="dropdown-menu d-block py-0">
        @foreach($users as $user)
        <div class="px-3 py-1 border-bottom">
            <div class="d-flex flex-column ml-3">
                <span>{{$user->name}}</span>
                <small>{{$user->email}}</small>
                <a href="{{route('admin.users.editRole',$user->id)}}">Wijzig Gebruikersrol</a>
            </div>
        </div>
        @endforeach
    </div>
    @endif
</div>