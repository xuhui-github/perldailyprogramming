#!/usr/bin/perl
use SDL::App;
use SDL::Surface;
our $app=SDL::App->new(-width=>640,-height=>480);
our $img=SDL::Surface->new(-name=>"$ARGV[0]");
$img->blit(SDL::Rect->new(-width=>100,-height=>100,-x=>200,-y=>0),$app,undef);
$app->flip();
$app->update;
sleep 45;
