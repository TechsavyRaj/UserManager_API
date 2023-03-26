<?php

namespace App\Jobs;

use App\Models\User;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use League\Csv\Writer;

class ExportUsers implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $users;

    public function __construct($users)
    {
        $this->users = $users;
    }

    public function handle()
    {
        $csv = Writer::createFromString('');
        $csv->insertOne(['Title','FirstName','LastName', 'Email', 'Phone', 'Street', 'City', 'State', 'Country', 'Postcode','Picture']);

        foreach ($this->users as $user) {
            $csv->insertOne([
                $user->title,
                $user->first_name,
                $user->last_name,
                $user->email,
                $user->phone,
                $user->street,
                $user->city,
                $user->state,
                $user->country,
                $user->postcode,
                $user->picture,
            ]);
        }

        $filename = 'users-' . date('Y-m-d-H-i-s') . '.csv';
        $path = storage_path('app/exports/' . $filename);
        file_put_contents($path, $csv->getContent());
    }
}
