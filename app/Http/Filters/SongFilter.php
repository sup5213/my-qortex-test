<?php
//NOT USE!!!!!!!!!!!!
namespace App\Http\Filters;
use App\Http\Filters\AbstractFilter;
use Illuminate\Database\Eloquent\Builder;

class SongFilter extends AbstractFilter
{
    public const TITLE = 'title';
    protected function getCallbacks(): array
    {
        return [
            self::TITLE => [$this, 'title'],
        ];
    }
    public function title(Builder $builder, $value)
    {
        $builder->where('title', 'like', "%{$value}%");
    }
}


