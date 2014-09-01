package Acme::Hello::World::XS;

use strict;
use warnings;

our $VERSION = '0.01;';

require Exporter;
our @ISA    = qw( Exporter );
our @EXPORT = qw( greet    );

use Inline
  VERSION => '0.01',
  NAME    => 'Acme::Hello::World::XS',
  C       => <<'...';
void greet() { printf("Hello, world\n") }
...

END {
  Inline->init();
}

1;
