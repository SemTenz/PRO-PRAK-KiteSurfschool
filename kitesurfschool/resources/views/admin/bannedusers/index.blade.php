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
            <td><a href="{{route('admin.users.edit',$user->id)}}">Wijzig Gebruikersrol</a></td>

            <td>
                <form method="POST" action="{{ route('admin.users.ban', $user) }}">
                    @csrf
                    @method('POST')
                    <button type="submit">Ban User</button>
                </form>
            </td>
        </tr>

        @endforeach
    </table>

    @foreach ($banned as $banData)
    {{$banData->bannable_id}}
    @endforeach
</x-admin-layout>