Vim�UnDo� $S�Y|De75���Ų��Ghs��00��	uNH�   &                                   d	��    _�                              ����                                                                                                                                                                                                                                                                                                                                                             d	��    �       '       &   <?php       namespace Database\Factories;       3use Illuminate\Database\Eloquent\Factories\Factory;   use Illuminate\Support\Str;       /**   M * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>    */   !class UserFactory extends Factory   {       /**   (     * Define the model's default state.        *   #     * @return array<string, mixed>        */   '    public function definition(): array       {           return [   %            'name' => fake()->name(),   5            'email' => fake()->unique()->safeEmail(),   )            'email_verified_at' => now(),   e            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password   0            'remember_token' => Str::random(10),   
        ];       }           /**   D     * Indicate that the model's email address should be unverified.        */   (    public function unverified(): static       {   7        return $this->state(fn (array $attributes) => [   (            'email_verified_at' => null,           ]);       }   }5�5��