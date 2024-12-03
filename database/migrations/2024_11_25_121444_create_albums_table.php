<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlbumsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('albums', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('year');
            $table->unsignedBigInteger('artist_id');
            $table->timestamps();
            $table->softDeletes();
            //$table->index('artist_id','album_artist_idx');
            //$table->foreign('artist_id','album_artist_fk')->on('artists')->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('albums');
    }
}
