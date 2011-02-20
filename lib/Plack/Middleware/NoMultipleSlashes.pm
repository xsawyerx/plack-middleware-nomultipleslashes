use strict;
use warnings;
package Plack::Middleware::NoMultipleSlashes;

use parent qw(Plack::Middleware);

sub call {
    my($self, $env) = @_;
    $env->{'PATH_INFO'} =~ s{/+}{/}g;
    $self->app->($env);
};

1;
