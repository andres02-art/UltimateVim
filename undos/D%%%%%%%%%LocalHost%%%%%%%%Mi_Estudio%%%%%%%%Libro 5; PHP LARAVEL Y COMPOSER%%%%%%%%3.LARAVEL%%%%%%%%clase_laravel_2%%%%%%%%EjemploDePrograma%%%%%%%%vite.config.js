Vim�UnDo� �au��(�o���q�ɔ#&��E��)
����                                      d	�    _�                              ����                                                                                                                                                                                                                                                                                                                                                             d	�    �                 �             �             �             �             �             �             �             �             �             �             �             �             �             �             �             �             �             �             �   
          �   	      
    �      
   	    �      	       �             �             �             �             �             �             �              �                 $import { defineConfig } from 'vite';   *import laravel from 'laravel-vite-plugin';   %import vue from '@vitejs/plugin-vue';       export default defineConfig({       plugins: [           laravel({               input: [   *                'resources/sass/app.scss',   &                'resources/js/app.js',               ],               refresh: true,           }),           vue({               template: {   %                transformAssetUrls: {                       base: null,   +                    includeAbsolute: false,                   },               },           }),       ],       resolve: {           alias: {   /            vue: 'vue/dist/vue.esm-bundler.js',   8            '@': path.resolve(__dirname, 'resources/js')   
        },       },   });�                $import { defineConfig } from 'vite';5��                                                  �                                                  �                                  �             �                                           %       �                          %               +       �                          P               &       �                          v                      �                          w                      �                          �                      �                          �                      �                          �                      �                          �               +       �    	                      �               '       �    
                                           �                          ,                     �                          G                     �                          S                     �                          a                     �                          y              &       �                          �                      �                          �              ,       �                          �                     �                          �                     �                                               �                                               �                                                �                          /                     �                          @              0       �                          p              9       �                          �                     �                          �                     �                          �                     �                          �                     5��