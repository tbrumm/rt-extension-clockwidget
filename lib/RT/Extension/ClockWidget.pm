package RT::Extension::ClockWidget;

our $VERSION = '1.0.0';

=head1 NAME

RT::Extension::ClockWidget - Flip-clock dashboard widget for Request Tracker 6

=head1 DESCRIPTION

Adds an animated flip-clock dashboard widget to RT 6. The widget displays the
current time (HH:MM) as a classic split-flap display with smooth CSS flip
animations and a date line beneath. The widget background adapts automatically
to the active RT theme (light, dark, KNTheme, etc.) while the flip panels keep
their classic dark appearance.

=head1 REQUIREMENTS

=over 4

=item * Request Tracker 5.0.0 or later (developed and tested on RT 6)

=item * A modern browser with CSS 3D transform support

=back

=head1 INSTALLATION

=head2 From source

    perl Makefile.PL
    make
    sudo make install

=head2 Register the plugin

Add to F</opt/rt6/etc/RT_SiteConfig.pm>:

    Plugin('RT::Extension::ClockWidget');

=head2 Add to HomepageComponents

Add C<ClockWidget> to the allowed component list in RT_SiteConfig.pm or a
config file in RT_SiteConfig.d/:

    Set($HomepageComponents, [qw(ClockWidget ...)]);

=head2 Clear cache and restart

    sudo systemctl stop apache2
    sudo rm -rf /opt/rt6/var/mason_data/obj/*
    sudo systemctl start apache2

=head1 USAGE

Once installed, open any RT Dashboard (Home → Edit) and drag the B<Uhr>
component from the available-portlets list into the desired column.

=head1 AUTHOR

Torsten Brumm

=head1 LICENSE

GNU General Public License v2

=cut

1;
