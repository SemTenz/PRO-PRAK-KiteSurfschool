<x-admin-layout>
    @livewire('search')

    <table>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>email</th>
            <th>usertype</th>
        </tr>
        @foreach ($users as $user)
        <tr>
            <td>{{ $user->id }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ $user->usertype }}</td>
            <td><a href="{{route('admin.users.edit ',$user->id)}}">Wijzig Gebruikersrol</a></td>
        </tr>
        @endforeach
    </table>
</x-admin-layout>