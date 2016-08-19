package curioustigerspace;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/page1' => sub {
    template 'layouts/page1/page1';
};

get qr/pages?[2-9]/ => sub {
    template 'layouts/page2/page2';
};

get qr{/hello/([\w]+)} => sub {
    my ($name) = splat;
    return "Hello $name";
};

get qr{/hello/([\w]+)} => sub {
    my ($name) = splat;
    return "Hello $name";
};

true;
