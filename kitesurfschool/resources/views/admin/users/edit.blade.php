<x-admin-layout>
    <form action="{{route('admin.users.update',$users->id)}}" method="post">
        @csrf
        @method('PUT')
        <label for="name">naam:</label>
        <br>
        <input type="text" name="name" value="{{$users->name}}">
        <br><br>
        <label for="email">email:</label>
        <br>
        <input type="text" name="email" value="{{$users->email}}">
        <br><br>

        <label for="usertype">usertype:</label>
        <br>

        <select name="usertype" id="usertype">
            <option value="instructor">instructeur</option>
            <option value="user">gebruiker</option>
        </select>
        <br>
        <br>
        <button type="submit">Aanpassen</button>
    </form>
</x-admin-layout>