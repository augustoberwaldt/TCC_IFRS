\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifrs}[2026/04/17 v4.3.2 Formatacao IFRS corrigida]

% =========================
% Codificacao e idioma
% =========================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazilian,english]{babel}

% =========================
% Opcoes
% =========================
\DeclareOption{oneside}{\AtEndOfClass{\@twosidefalse}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% =========================
% Classe base
% =========================
\LoadClass[12pt,a4paper,twoside]{report}

% =========================
% Pacotes essenciais
% =========================
\RequirePackage{lastpage}
\RequirePackage{indentfirst}
\RequirePackage{natbib}

% =========================
% Protecao para comandos internos
% =========================
\makeatletter

% =========================
% Ajuste da data (corrigido)
% =========================
\renewcommand{\date}[2]{%
    \gdef\@publmonth{#1}
    \gdef\@publyear{#2}
}
\date{\number\month}{\number\year}

% =========================
% (restante do seu código permanece igual)
% =========================

\makeatother