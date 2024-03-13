<x-admin-layout>
    <form action="{{route('admin.users.updateRole',$users->id)}}" method="post">
        @csrf
        @method('PUT')
        label for="usertype">Gebruikersrol</label>
        <select name="usertype" id="usertype">
            <option value="instructor">instructeur</option>
            <option value="user">gebruiker</option>
        </select>
        <br>
        <br>
        <button type="submit">Aanpassen</button>
    </form>
</x-admin-layout>