<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
            return [
                "name" => $this->faker->name(),
                "email" => $this->faker->unique()->safeEmail(),
                "phone_number" => $this->faker->phoneNumber(),
                "password" => Hash::make("Password")
            ];
    }
}
