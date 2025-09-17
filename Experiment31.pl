% ---------- Blog Facts ----------
post('Intro to Prolog', 'https://example.com/prolog-intro', 'Learn basics of Prolog programming.').
post('HTML Basics', 'https://example.com/html-basics', 'Understand how HTML works for web design.').

% ---------- HTML Generators ----------
title_tag(Stream, Title) :-
    format(Stream, '<title>~w</title>~n', [Title]).

heading_tag(Stream, Text) :-
    format(Stream, '<h1>~w</h1>~n', [Text]).

paragraph_tag(Stream, Text) :-
    format(Stream, '<p>~w</p>~n', [Text]).

anchor_tag(Stream, URL, Text) :-
    format(Stream, '<a href="~w">~w</a>~n', [URL, Text]).

% ---------- Rule to display blog post into file ----------
show_post(Stream, Title, URL, Excerpt) :-
    title_tag(Stream, Title),
    heading_tag(Stream, Title),
    paragraph_tag(Stream, Excerpt),
    anchor_tag(Stream, URL, 'Read more'),
    format(Stream, '<hr>~n', []).  % Separator between posts

% ---------- Rule to generate full blog file ----------
generate_blog :-
    open('blog.html', write, Stream),
    format(Stream, '<!DOCTYPE html>~n<html>~n<head>~n', []),
    title_tag(Stream, 'My Prolog Blog'),
    format(Stream, '</head>~n<body>~n', []),

    % Loop through all posts
    forall(post(Title, URL, Excerpt),
          show_post(Stream, Title, URL, Excerpt)),

    format(Stream, '</body>~n</html>', []),
    close(Stream).
