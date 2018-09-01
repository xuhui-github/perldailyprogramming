#!/usr/bin/perl
use Tk;
use Tk::Button;
my $top=new MainWindow;
      $b=$top->Button(-text=>"hello",-background=>"blue");
    $b->pack;
MainLoop;
