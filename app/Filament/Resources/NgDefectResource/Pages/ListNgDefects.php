<?php

namespace App\Filament\Resources\NgDefectResource\Pages;

use App\Filament\Resources\NgDefectResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListNgDefects extends ListRecords
{
    protected static string $resource = NgDefectResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
