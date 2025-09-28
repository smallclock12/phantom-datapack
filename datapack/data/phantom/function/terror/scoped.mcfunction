# scoped should always be executed as the terror boss & and with a "function" parameter

execute store result storage terror id int 1 run data get entity @s data.id 1
$function phantom:terror/$(function) with storage terror
