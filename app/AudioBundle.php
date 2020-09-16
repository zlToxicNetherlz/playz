<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AudioBundle extends Model
{

    protected $table = 'bundles';
    protected $fillable = ['id', 'author_id', 'title', 'description', 'cover_image', 'price'];

    public function getAuthorId()
    {
        return $this->attributes['author_id'];
    }

    public function getTitle() 
    {
        return $this->attributes['title'];
    }

    public function getDescription() 
    {
        return $this->attributes['description'];
    }

    public function getCoverImage() 
    {
        return $this->attributes['cover_image'];
    }
    
    public function getId()
    {
        return $this->attributes['id'];
    }

    public function setId($id)
    {
        $this->attributes['id'] = $id;
    }

    public function getPrice()
    {
        return $this->attributes['price'];
    }

    public function setPrice($price)
    {
        $this->attributes['price'] = $price;
    }

}