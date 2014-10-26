#!perl -T

use Test::More tests => 3;

use Lingua::Han::Utils qw/Unihan_value/;

my $word = '��';

is(Unihan_value($word), '4E2D', "it's not under utf8");

$word = '��';

is(Unihan_value($word), '5586', "for gbk Encode::Guess");

$word = "���ɽ��";
is(Unihan_value($word), '59296D255C71897F', "for multi words");