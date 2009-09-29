package FullScreen::Plugin;

use strict;

sub xfrm_edit {
    my ($cb, $app, $tmpl) = @_;
    my $slug1 = <<END_TMPL;
<link rel="stylesheet" href="<mt:StaticWebPath>plugins/FullScreen/fullscreen.css" type="text/css" />
<script src="<mt:StaticWebPath>plugins/FullScreen/fullscreen.js"></script>
END_TMPL
    $$tmpl =~ s{(<mt:setvarblock name="html_head" append="1">)}{$1$slug1}msg;
}

sub xfrm_editor {
    my ($cb, $app, $tmpl) = @_;
    my $slug2 = <<END_TMPL;
<a href="javascript: void 0;" onclick="toggleFullscreen()" title="Toggle Fullscreen" class="toolbar button fullscreen"><b>Toggle Fullscreen</b><s></s></a>
END_TMPL
    $$tmpl =~ s{(<b>HTML Mode</b><s></s></a>)}{$1$slug2}msg;
}

sub xfrm_tmpl {
    my ($cb, $app, $tmpl) = @_;
    my $slug1 = <<END_TMPL;
<link rel="stylesheet" href="<mt:StaticWebPath>plugins/FullScreen/fullscreen.css" type="text/css" />
<script src="<mt:StaticWebPath>plugins/FullScreen/fullscreen.js"></script>
END_TMPL
    $$tmpl =~ s{(<mt:setvarblock name="html_head" append="1">)}{$1$slug1}msg;
    my $slug2 = <<END_TMPL;
<a href="javascript: void 0;" onclick="toggleFullscreen()" title="Toggle Fullscreen" class="toolbar button fullscreen"><b>Toggle Fullscreen</b><s></s></a>
END_TMPL
    $$tmpl =~ s{(<span class="codepress-toolbar" style="float:right">)}{$1$slug2}msg;
}

1;
__END__
