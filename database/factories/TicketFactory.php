<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ticket>
 */
class TicketFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'origin' => fake()->city(),
            'destination' => fake()->city(),
            'departure' => fake()->date('Y-m-d H:i:s'),
            'return' => fake()->date('Y-m-d H:i:s')
        ];
    }
}
