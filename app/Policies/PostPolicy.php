<?php

namespace App\Policies;

use App\Models\Apoteker;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class PostPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return true;
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Apoteker $apoteker): bool
    {
        return true;
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        if($user->level == "apoteker" || $user->level == "admin"){
            return true;
        }
        return false;
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Apoteker $apoteker): bool
    {
        if($user->level == "apoteker" || $user->level == "admin"){
            return true;
        }

        if($user->apoteker_id == $apoteker->id){
            return true;
        }
        return false;
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Apoteker $apoteker): bool
    {
        if ($user->level == "admin"){
            return true;
        }
        return false;
    }
}
