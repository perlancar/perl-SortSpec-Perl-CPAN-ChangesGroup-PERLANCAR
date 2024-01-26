package SortSpec::Perl::CPAN::ChangesGroup::PERLANCAR;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    return {
        v => 1,
        summary => 'Specification to sort changes group heading PERLANCAR-style',
    };
}

sub get_spec {
    my %args = @_;


    [
        '',
        qr/break|incompatible/i,
        qr/remove|delete/i,
        qr/new|feature/i,
        qr/enhance/i,
        qr/bug|fix/i,
    ],
}

1;
# ABSTRACT: Specification to sort changes group heading PERLANCAR-style

=for Pod::Coverage ^(get_spec|meta)$

=head1 DESCRIPTION

A Changes file can group its changes entries into groups with headings, e.g.:

 [ENHANCEMENTS]

 - blah blah

 - blah

 [BUG FIXES]

 - blah blah blah

I sort these group headings according to this principle: prioritize the items
that:

=over

=item * are more important;

=item * affect users the most;

=item * users would want to know first.

=back

Thus breaking or backward-incompatible changes are put first because they affect
existing users and in a significant way. Removed features are next, they are
also basically backward-incompatible changes.

Then come new features. After that, enhancements. Bug fixes currently come last
(actually bug fixes vary in importance but we currently do not categorize them
further into subgroups).

=cut
