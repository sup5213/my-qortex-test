<?php

namespace App\Http\Filters;
use App\Http\Filters\AbstractFilter;
use Illuminate\Database\Eloquent\Builder;

class ArtistFilter extends AbstractFilter
{
    public const NAME = 'name';
    protected function getCallbacks(): array
    {
        return [
            self::NAME => [$this, 'name'],
        ];
    }
    public function name(Builder $builder, $value)
    {
        $builder->where('name', 'like', "%{$value}%");
    }
}


