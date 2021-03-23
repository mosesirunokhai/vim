let maplocalleader = ' '

    "comment a line
     nnoremap <localleader>cc 0i%<esc>$

    "create a pdf file 
     nnoremap <localleader>tt :!pdflatex %<cr>

    "indent a file
     nnoremap <tab> 0i<tab><esc>$
     inoremap <tab> <esc>0i<tab><esc>$a

     "insert the intriduction remarks
     :iabbrev tex_intro             
                \\documentclass{article}<cr><cr>
                \\usepackage[margin=1in]{geometry} %removes extra margins <cr>
                \\usepackage{graphicx} <cr>
                \\usepackage{amsmath, amstext, amssymb} <cr>
                \\usepackage[utf8]{inputenc} <cr>
                \\usepackage{array}<cr><cr><cr>
                \\title{Assignment} <cr>
                \\author{Moses Irunokhai , Student No: 015321538} <cr>
                \\date{} <cr><cr>
                \\begin{document} <cr>
                \\maketitle <cr><cr>
                \\end{document} 

     "create a matrix abbreviation
     :iabbrev tex_matrix
                 \$<cr>\begin{pmatrix} <cr>
                 \1 & 2 & 3 \\ <cr>
                 \1 & 2 & 3 \\ <cr>
                 \1 & 2 & 3 \\ <cr>
                 \\end{pmatrix}<cr>
                 \$<cr><cr>

    "create a table
    :iabbrev tex_table 
                \\begin{table}[htbp] <cr>
                \\caption{Cayley table for the matrix multiplication}<cr>
           \\begin{center}<cr>
              \\begin{tabular}{c c c c c c c} <cr> 
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                  \\hline<cr>
                  \$ \times $ & $ e $ & $ x_1 $ & $ x_2 $ & $ x_3 $ & $ x_4 $ & $ x_5 $\\ <cr>
                   \hline<cr>
               \\end{tabular}<cr>
           \\end{center}<cr>
           \\label{tab:cayley_table}<cr>
       \\end{table}\\ <cr><cr><cr>

    "create enumerate list
    :iabbrev tex_enu 
                \\begin{enumerate} <cr><cr>
                \\item <cr><cr>
                \\end{enumerate} <cr><cr>

    "create itemize list
    :iabbrev tex_item 
                \\begin{itemize} <cr><cr>
                \\item <cr><cr>
                \ \end{itemize} <cr><cr>

"    including graphic
    :iabbrev tex_image 
                \\begin{figure}[htbp]<cr>
                \\begin{center}<cr>
                \\includegraphics[width=3in]{...png}<cr>
                \\caption{this is a fig}<cr>
                \\label{fig:fig}<cr>
                \\end{center}<cr>
                \\end{figure}<cr>
