<?php

namespace App\Http\Filters;
use App\Http\Filters\AbstractFilter;
use Illuminate\Database\Eloquent\Builder;

class AlbumFilter extends AbstractFilter
{
    public const NAME = 'name';
    public const YEAR='year';
    public const ARTID='artist_id';
    protected function getCallbacks(): array
    {
        return [
            self::NAME => [$this, 'name'],
            self::YEAR => [$this, 'year'],
            self::ARTID => [$this, 'artist_id'],
        ];
    }
    public function name(Builder $builder, $value)
    {
        $builder->where('name', 'like', "%{$value}%");
    }
    public function year(Builder $builder, $value)
    {
        $builder->where('year', 'like', "%{$value}%");
    }
    public function artist_id(Builder $builder, $value)
    {
        $builder->where('artist_id', 'like', "%{$value}%");
    }
}


