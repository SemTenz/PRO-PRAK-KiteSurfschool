<x-admin-layout>
    <h1>ik ben users</h1>

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
        </tr>
        @endforeach
    </table>
</x-admin-layout>