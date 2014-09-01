package Acme::Hello::World::XS;
our $VERSION = '0.01;';

use Inline C => <<'...';
void greet() { printf("Hello, world\n") }
...

1;
