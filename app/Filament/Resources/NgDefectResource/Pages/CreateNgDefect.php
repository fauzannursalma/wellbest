<?php

namespace App\Filament\Resources\NgDefectResource\Pages;

use App\Filament\Resources\NgDefectResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateNgDefect extends CreateRecord
{
    protected static string $resource = NgDefectResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
