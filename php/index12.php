<?php

/* Строкові функції
http://php.net/manual/ru/ref.strings.php
http://php.net/manual/ru/ref.mbstring.php
array explode ( string $delimiter , string $string [, int $limit ] )
string implode ( string $glue , array $pieces ) || join()
string trim ( string $str [, string $character_mask = " \t\n\r\0\x0B" ] )
string rtrim ( string $str [, string $character_mask ] )
string ltrim ( string $str [, string $character_mask ] )
string md5 ( string $str [, bool $raw_output = false ] )
string sha1 ( string $str [, bool $raw_output = false ] )
string nl2br ( string $string [, bool $is_xhtml = true ] )
mixed str_replace ( mixed $search , mixed $replace , mixed $subject [, int &$count ] )
mixed str_ireplace ( mixed $search , mixed $replace , mixed $subject [, int &$count ] )
string strip_tags ( string $str [, string $allowable_tags ] )
int strlen ( string $string )
mixed mb_strlen ( string $str [, string $encoding = mb_internal_encoding() ] )
int mb_strpos ( string $haystack , string $needle [, int $offset = 0 [, string $encoding = mb_internal_encoding() ]] )
string mb_strtolower ( string $str [, string $encoding = mb_internal_encoding() ] )
string mb_strtoupper ( string $str [, string $encoding = mb_internal_encoding() ] )
string mb_substr ( string $str , int $start [, int $length = NULL [, string $encoding = mb_internal_encoding() ]] )
string htmlspecialchars ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get("default_charset") [, bool $double_encode = true ]]] )
string htmlspecialchars_decode ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 ] )
string htmlentities ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get("default_charset") [, bool $double_encode = true ]]] )
*/

$um = [1,2,3];
$name = ['Nazar', 'Taras', 'Max', 'Andriy', 'Olga'];
$name2 = [ 'name' => ' Andriy', 'year' => 22];
$test = [];


$names = '    Nazar Taras   Max  Andriy    Olga    ';
$date = explode(' ', $names);

echo '<pre>';
print_r($date);
echo '</pre>';


echo '<hr>';
echo '<br>';

echo implode(' ', $date);

echo '<hr>';
echo '<br>';

$names = trim($names, ' ');
$date = explode (' ', $names);
echo '<pre>';
print_r($date);
echo '</pre>';


echo '<hr>';
echo '<br>';

$newDate = array_unique($data);
echo '<pre>';
print_r($newDate);
echo '</pre>';

echo implode(' ', $newDate);

echo '<hr>';
echo '<br>';

$pwd = 'password';
echo md5(md5($pwd));

echo '<hr>';
echo '<br>';

$names = '    Nazar Taras   Max  Andriy    Olga    ';
echo $names;
echo '<br>';
$newNames = str_replace(' ','_', $names);
echo $newNames;
echo '<br>';
echo str_replace(' ','_', $names);
echo '<br>';
$names = str_replace(' ','_', $names);
echo $names;

echo '<hr>';
echo '<br>';

/*
string strip_tags ( string $str [, string $allowable_tags ] )
int strlen ( string $string )
mixed mb_strlen ( string $str [, string $encoding = mb_internal_encoding() ] )
int mb_strpos ( string $haystack , string $needle [, int $offset = 0 [, string $encoding = mb_internal_encoding() ]] )
string mb_strtolower ( string $str [, string $encoding = mb_internal_encoding() ] )
string mb_strtoupper ( string $str [, string $encoding = mb_internal_encoding() ] )

*/

$names = '    Nazar Taras   Max  Andriy    Olga    ';
$names2 = '    Nazar Taras <b>Max</b>     <h1>Andriy</h1>      Olga    ';
echo $names2;
echo '<br>';
echo strip_tags($names);
echo '<br>';
echo strlen($names2);

echo '<hr>';
echo '<br>';

echo strpos($names2, '12212121');
echo strpos($names2, 'Max');

echo '<hr>';
echo '<br>';

echo $newNames2 = strtolower($names2);
echo '<br>';
echo strtoupper($newNames2);

echo '<hr>';
echo '<br>';

/*
string mb_substr ( string $str , int $start [, int $length = NULL [, string $encoding = mb_internal_encoding() ]] )
string htmlspecialchars ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get("default_charset") [, bool $double_encode = true ]]] )
string htmlspecialchars_decode ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 ] )
string htmlentities ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get("default_charset") [, bool $double_encode = true ]]] )

*/

echo substr($newNames2, -1);
echo '<br>';
echo substr($newNames2, 5, 10);
echo '<br>';
echo substr($newNames2, 5);

echo '<hr>';
echo '<br>';

$names2 = '    Nazar Taras &lt;b&gt;Max&lt;/b&gt     &lt;h1&gtAndriy&lt;/h1&gt      Olga    ';
echo $names2;
echo '<br>';
$names2 = '    Nazar Taras <b>Max</b>     <h1>Andriy</h1>      Olga    ';
echo $names2;
echo '<br>';

echo '<hr>';
echo '<br>';

echo 'htmlspecialchars';
echo '<br>';
echo htmlspecialchars($names2);

echo '<hr>';
echo '<br>';

echo htmlspecialchars_decode($names2);

echo '<hr>';
echo '<br>';

/*
string sha1 ( string $str [, bool $raw_output = false ] )
string nl2br ( string $string [, bool $is_xhtml = true ] )
string htmlentities ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get("default_charset") [, bool $double_encode = true ]]] )
*/

$names2 = '    Nazar Taras <b>Max</b>     <h1>Andriy</h1>      Olga    ';
echo htmlentities($names2);

echo '<hr>';
echo '<br>';

echo sha1($names2);

echo '<hr>';
echo '<br>';



echo '<hr>';
echo '<br>';




echo '<hr>';
echo '<br>';