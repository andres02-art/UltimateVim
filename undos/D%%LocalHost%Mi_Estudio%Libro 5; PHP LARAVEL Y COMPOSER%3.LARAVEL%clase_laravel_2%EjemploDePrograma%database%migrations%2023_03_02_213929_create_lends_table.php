Vim�UnDo� �=�9�x���:J%rN�v�c����o����lP                                     d b    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d�     �                           $table->date�                           �             5��                          T                     �                          T                     �                        g                    �                        h                    �                        h                    �                     	   h             	       �                        n                    �                        r                    �       $                  x                     �       %                  y                     �                          z                     �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �       !                  �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d H    �                 <?php       -use Illuminate\Database\Migrations\Migration;   )use Illuminate\Database\Schema\Blueprint;   &use Illuminate\Support\Facades\Schema;       "return new class extends Migration   {       /**        * Run the migrations.        */       public function up(): void       {   =        Schema::create('lends', function (Blueprint $table) {               $table->id();   %            $table->date('date_out');   #            $table->date('date_in')   !            $table->timestamps();           });       }           /**        * Reverse the migrations.        */        public function down(): void       {   &        Schema::dropIfExists('lends');       }   };5��                         �                    5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             d K    �                 <?php       -use Illuminate\Database\Migrations\Migration;   )use Illuminate\Database\Schema\Blueprint;   &use Illuminate\Support\Facades\Schema;       "return new class extends Migration   {       /**        * Run the migrations.        */       public function up(): void       {   =        Schema::create('lends', function (Blueprint $table) {               $table->id();   %            $table->date('date_out');   $            $table->date('date_in');   %                $table->timestamps();           });       }           /**        * Reverse the migrations.        */        public function down(): void       {   &        Schema::dropIfExists('lends');       }   };�               #            $table->date('date_in')5��       #                  �                     �                         �                    5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             d O     �                           �             5��                          �                     �                          �                     �                        �                    �                        �                    �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d a    �                 <?php       -use Illuminate\Database\Migrations\Migration;   )use Illuminate\Database\Schema\Blueprint;   &use Illuminate\Support\Facades\Schema;       "return new class extends Migration   {       /**        * Run the migrations.        */       public function up(): void       {   =        Schema::create('lends', function (Blueprint $table) {               $table->id();   %            $table->date('date_out');   $            $table->date('date_in');   &            $table->boolean('status');   !            $table->timestamps();           });       }           /**        * Reverse the migrations.        */        public function down(): void       {   &        Schema::dropIfExists('lends');       }   };5�5��