% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{HomeworkTemplate}[Wuhan University Homework Thesis Template]
\LoadClass[zihao=-4,a4paper,oneside]{ctexbook}
\setmainfont{Times New Roman}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions



%------------------------ Page layout ----------------------------------
\RequirePackage{fancyhdr,hyperref}

\hypersetup{pdfencoding=auto}  %%% 邓东升修改
 \ifprint
 \hypersetup{hidelinks}
 \else
\hypersetup{citecolor=magenta,linkcolor=blue}
\fi
\RequirePackage[top=2.7truecm,bottom=2.2truecm,left=3truecm,right=3truecm,includefoot,xetex]{geometry}    % 页面设置%

\newtoks\Cmajor          %学科专业中文名
\newtoks\Csupervisor     %指导教师中文名
\newtoks\Cschoolname      %学院中文名
\newtoks\Cemail
\newtoks\Ctelephone
\newtoks\CStudentID


\pagestyle{fancyplain}
\fancyhf{}  %清除以前对页眉页脚的设置
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{-\,\thepage\,-}


\fancypagestyle{plain}
{
\fancyhead{}                                    % clear all header fields
\renewcommand{\headrulewidth}{0pt}
\fancyfoot{}                                    % clear all footer fields
\fancyfoot[C]{-\,\thepage\,-}
}

%%=====封面===================== 
\def\maketitle{%
  \null
  \thispagestyle{empty}%
  %\vspace*{-2cm}
  \begin{center}\leavevmode
    \vspace{3.6cm}
    {\heiti \zihao{2} \@title \par}%
%    \vspace{4cm}
     \vfill\vfill\vfill
    {\songti\zihao{-3}
    \begin{tabular}{cp{5cm}c}
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{学\hfill 号：}} & { {}\raisebox{-3ex}[0pt]{\the\CStudentID}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{院\hfill (系)\hfill 名\hfill 称：}} & {  {}\raisebox{-3ex}[0pt]{\the\Cschoolname}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{专\hfill 业\hfill 名\hfill 称：}} & { {}\raisebox{-3ex}[0pt]{\the\Cmajor}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{学\hfill 生\hfill 姓\hfill 名：}} & { {}\raisebox{-3ex}[0pt]{\@author}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{指\hfill 导\hfill 教\hfill 师：}} & { {}\raisebox{-3ex}[0pt]{\the\Csupervisor}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{电\hfill 子\hfill 邮\hfill 箱：}} & { {}\raisebox{-3ex}[0pt]{\the\Cemail}\hfill{}} & \\[3ex]
      \quad \quad \quad \quad \quad \raisebox{-3ex}[0pt]{\makebox[3.5cm][s]{电\hfill 话\hfill 号\hfill 码：}} & { {}\raisebox{-3ex}[0pt]{\the\Ctelephone}\hfill{}} & \\[3ex]
     \end{tabular}
    }
    \par
    \vspace{2.6cm}
    {
    {\songti \zihao{3} \@date \par}%
    }
    %\vspace*{-0.7cm}
  \end{center}%
%  \null
%   \cleardoublepage
  }

%------------------------ Abstract & Keywords -------------------------
\newcommand\cnabstractname{摘要} 
\newcommand\cnkeywords[1]{ {\noindent\heiti\zihao{-4}\cnkeywordsname: }#1}
\newcommand\cnkeywordsname{关键词}

\newenvironment{cnabstract}{
    \newpage
\chapter[\cnabstractname]{\ziju{2}{\cnabstractname}}   %%%终于解决了书签乱码的问题 2005-04-12.huangzh
    \songti\zihao{-4}
    \@afterheading}
    {\par}


%%------------------------常用宏包-----------------------------------
\RequirePackage{amsmath,amssymb}
\RequirePackage[amsmath,thmmarks]{ntheorem}% AMSLaTeX宏包.
\RequirePackage{graphicx}                 % 图形
\RequirePackage{color,xcolor}             %支持彩色
%\RequirePackage{mathrsfs}   % 不同于\mathcal or \mathfrak 之类的英文花体字体
\RequirePackage{url}
\RequirePackage{enumerate}
%%----------------------- Theorems -----------------------------------
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
%\theoremsymbol{} %定理结束时自动添加的标志
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}


\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现

%%%%%%%-------------------------------------------------
%%%===  suppress extra inter-line spacing in \list environments
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%
% Change default margins for \list environments
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
%
\setlength\listparindent{2\ccwd}
% Change \listparindent to 2\ccwd in \list
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}

\makeatother
%---------------------------------------------------
\newcommand\acknowledgement{\chapter*{\ziju{2}致谢}}

%%% ---- 章节标题设置 ----- %%%%
\ctexset{chapter={format+={\zihao{-2}},%
               number={\zihao{-2}\arabic{chapter}},name={,},afterskip={30pt},beforeskip={20pt}}}
\ctexset{section={format+={\zihao{4}\raggedright}}}
\ctexset{subsection={format+={\zihao{-4}\raggedright}}}
\ctexset{subsubsection={format={\zihao{-4}\bf\raggedright}}}

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}

%%% ---- 图表标题设置 ----- %%%%
\RequirePackage[labelsep=quad]{caption} %% 序号之后空一格写标题
\captionsetup[table]{textfont=bf}  %%设置表格标题字体为黑体  。2016.06.07
\renewcommand\figurename{\zihao{-4} 图}
\renewcommand\tablename{\bf\zihao{-4} 表} 

%%% ------ 目录设置 ------- %%%%
\ctexset{contentsname={目\qquad 录}}
 
\RequirePackage{tocloft} 
\renewcommand\cftchapfont{\zihao{4}\bf}
\renewcommand\cfttoctitlefont{\hfill\zihao{-2}\bf}
\renewcommand\cftaftertoctitle{\hfill}
 
%%===参考文献===%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bibliographystyle{abbrv}        % 参考文献样式,  plain,unsrt,alpha,abbrv,chinesebst 等等
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{figures/}}        % 图片文件路径
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\allowdisplaybreaks

\endlinechar `\^^M
\endinput