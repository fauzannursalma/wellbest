<?php

namespace App\Filament\Resources\NgDefectResource\Pages;

use App\Filament\Resources\NgDefectResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditNgDefect extends EditRecord
{
    protected static string $resource = NgDefectResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
            Actions\ForceDeleteAction::make(),
            Actions\RestoreAction::make(),
        ];
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
