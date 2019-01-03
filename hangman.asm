
jmp main

; Declara e preenche tela linha por linha (40 caracteres)


palavra: var #21 							; declara vetor de 21 posicoes
letraDigitada: var #29
digite: string "Digite uma palavra: "  					; declara uma string

flagacerto: var #1
acertototal: var #1							;variavel para a quantidade de acertos possíveis
acerto: var #1								;Quantidade de erros
erro: var #1								;Quantidade de Acertos
posicao: var #1	
palavraDigitada: var #1							; variavel para a posição das letras da palavra na tela

;tela 40[colunas] x 30[linhas]

tela1Linha0  : string "   ===========                          "
tela1Linha1  : string "   |        ||                          "
tela1Linha2  : string "   |        ||                          "
tela1Linha3  : string "   |        ||                          "
tela1Linha4  : string "            ||                          "
tela1Linha5  : string "            ||                          "
tela1Linha6  : string "            ||                          "
tela1Linha7  : string "            ||                          "
tela1Linha8  : string "            ||                          "
tela1Linha9  : string "            ||                          "
tela1Linha10 : string "            ||                          "
tela1Linha11 : string "            ||                          "
tela1Linha12 : string "          ======                        "
tela1Linha13 : string "                                        "
tela1Linha14 : string "                                        "
tela1Linha15 : string "                                        "
tela1Linha16 : string "                                        "
tela1Linha17 : string "                                        "
tela1Linha18 : string "                                        "
tela1Linha19 : string "                                        "
tela1Linha20 : string "                                        "
tela1Linha21 : string "                                        "
tela1Linha22 : string "                                        "
tela1Linha23 : string "                                        "
tela1Linha24 : string "                                        "
tela1Linha25 : string "                                        "
tela1Linha26 : string "                                        "
tela1Linha27 : string "                                        "
tela1Linha28 : string "                                        "
tela1Linha29 : string "                                        "

tela2Linha0  : string "    _                              _    "
tela2Linha1  : string "   * *        _________________   * *   "
tela2Linha2  : string "  *   *     _*    __      __   *_*   *  "
tela2Linha3  : string " |     *  _*     *          *    *_  |  "
tela2Linha4  : string " |      **       __________        * |  "
tela2Linha5  : string " |     *        *     |    *       | |  "
tela2Linha6  : string " |    |        |      |     |      | |  "
tela2Linha7  : string " |    |        |   o  |  o  |      | |  "
tela2Linha8  : string "  *   |         *     |    *       | |  "
tela2Linha9  : string "   *  |          *    |   *        | |  "
tela2Linha10 : string "    * |           *___|__*         | |  "
tela2Linha11 : string "     *|           *  **  *         | |  "
tela2Linha12 : string "      |      *   | ()  () |        |*   "
tela2Linha13 : string "      *       *  *________*        |    "
tela2Linha14 : string "       *       *                  *     "
tela2Linha15 : string "        *       *____            *      "
tela2Linha16 : string "         *                     _*       "
tela2Linha17 : string "          *_                 _*         "
tela2Linha18 : string "            *_             _*           "
tela2Linha19 : string "              *___________*             "
tela2Linha20 : string "                                        "
tela2Linha21 : string "   *    * *** * * *       * * **   *    "
tela2Linha22 : string "    *  *  * * * *  *     *  * * *  *    "
tela2Linha23 : string "     **   * * * *   * * *   * *  * *    "
tela2Linha24 : string "     **   *** ***    * *    * *   **    "
tela2Linha25 : string "                                        "
tela2Linha26 : string "                                        "
tela2Linha27 : string "                                        "
tela2Linha28 : string " Gostaria de jogar novamente ?          "
tela2Linha29 : string " (1 = Yes) (0 = N)                      "

tela3Linha0  : string "                                        "
tela3Linha1  : string "                                        "
tela3Linha2  : string "                                        "
tela3Linha3  : string "                                        "
tela3Linha4  : string "                                        "
tela3Linha5  : string "                                        "
tela3Linha6  : string "                                        "
tela3Linha7  : string "                                        "
tela3Linha8  : string "                                        "
tela3Linha9  : string "                                        "
tela3Linha10 : string "                                        "
tela3Linha11 : string "                                        "
tela3Linha12 : string "                                        "
tela3Linha13 : string "                                        "
tela3Linha14 : string "                                        "
tela3Linha15 : string "                                        "
tela3Linha16 : string "                                        "
tela3Linha17 : string "                                        "
tela3Linha18 : string "                                        "
tela3Linha19 : string "                                        "
tela3Linha20 : string "                                        "
tela3Linha21 : string "                                        "
tela3Linha22 : string "                                        "
tela3Linha23 : string "                                        "
tela3Linha24 : string "                                        "
tela3Linha25 : string "                                        "
tela3Linha26 : string "                                        "
tela3Linha27 : string "                                        "
tela3Linha28 : string "                                        "
tela3Linha29 : string "                                        "

tela4Linha0  : string "               *|                       "
tela4Linha1  : string "            ,***        *|              "
tela4Linha2  : string "           ** **     ,***               "
tela4Linha3  : string "          ** **     ** **               "
tela4Linha4  : string "         ** **     || ||                "
tela4Linha5  : string "         || ||    ** **                 "
tela4Linha6  : string "         || ||   ** **                  "
tela4Linha7  : string "         || ||  ** **                   "
tela4Linha8  : string "         || || || ||                    "
tela4Linha9  : string "         **,*|,|*_**                    "
tela4Linha10 : string "           **)*)**|*                    "
tela4Linha11 : string "          )-.** .-(                     "
tela4Linha12 : string "         **^*` `*^**                    "
tela4Linha13 : string "        **  |   |  **                   "
tela4Linha14 : string "      ,*_| 0| _ | 0|_*,                 "
tela4Linha15 : string "    *`    `*=.v.=*`    `*               "
tela4Linha16 : string "   *`    _.*{_,_}*._    `*              "
tela4Linha17 : string "   `*`  ` *  |||  * `  `*`              "
tela4Linha18 : string "    `*,_  **=^~^=**  _,*`               "
tela4Linha19 : string "       *=,**-=-***,=*                   "
tela4Linha20 : string "           *---*                        "
tela4Linha21 : string "                                        "
tela4Linha22 : string "   *     * *** * *  *   *** *** ***     "
tela4Linha23 : string "    *   *  * * * *  *   * * *   *       "
tela4Linha24 : string "     * *   * * * *  *   * * *** ***     "
tela4Linha25 : string "      **   * * * *  *   * *   * *       "
tela4Linha26 : string "      **   *** ***  *** *** *** ***     "
tela4Linha27 : string "                                        "
tela4Linha28 : string "   Gostaria de jogar novamente ?        "
tela4Linha29 : string "   (1 = Yes) (0 = No)                   "


main:
	loadn R1, #tela1Linha0 						; endereco de onde comeca a primeira linha do cenario
	loadn R2, #256		   					; cor branca
	
	call zeravariaveis
	
	

	halt


zeravariaveis:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5

	load R0, erro
	load R1, acerto
	load R2, acertototal
	load R3, posicao
	load R4, flagacerto
	load R5, palavraDigitada

	loadn R0, #0
	loadn R1, #0
	loadn R2, #0
	loadn R3, #0
	loadn R4, #0
	loadn R5, #0


	store erro, R0
	store acerto, R1
	store acertototal, R2
	store posicao, R3
	store flagacerto, R4
	store palavraDigitada,R5	

	call zeraStringPalavra
	call zeraStringLetraDigitada	

	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0

	
	; comecar o jogo aqui para quando ele quiser jogar de novo
	call imprimeTela
	call imprimeDigite
	call lerPalavra
	;breakp
	call imprimeRiscos
	
	call jogo
	
	rts


zeraStringPalavra:

	push R0
	push R1
	push R2
	
	loadn R2, #'\0'
	loadn R0, #palavra

loopZeraStringPalavra:

	loadi R1, R0
	cmp R1, R2
	jeq zeraStringPalavraSai
	storei R0,R2
	
	inc R0
	jmp loopZeraStringPalavra

zeraStringPalavraSai:
	pop R2
	pop R1
	pop R0

	rts

zeraStringLetraDigitada:

	push R0
	push R1
	push R2
	
	loadn R2, #'\0'
	loadn R0, #letraDigitada

loopZeraStringLetraDigitada:

	loadi R1, R0
	cmp R1, R2
	jeq zeraStringLetraDigitadaSai
	storei R0,R2
	
	inc R0
	jmp loopZeraStringLetraDigitada

zeraStringLetraDigitadaSai:
	pop R2
	pop R1
	pop R0

	rts




imprimeTela:	
	push R0
	push R1
	push R3
	push R4
	push R5
	
	loadn R0, #0							; posicao inicial tem que ser comeco da tela
	loadn R3, #40							; incremento da posicao da tela
	loadn R4, #41							; incremento do ponteiro das linhas da tela
	loadn R5, #1200							; limite da tela

	
imprimeTelaLoop:
	call imprimeCaractere
	add R0, R0, R3 							; soma 0 com 40 para ir p/ a segunda linha R0 = R0 + 40
	add R1, R1, R4 		; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1) por causa do \0 R1 = R1 + 41
	cmp R0, R5	   						; compara R0 com 1200
	jne imprimeTelaLoop 						; enquanto R0 < 1200
	
	;resgata os valores dos registradores utilizados na subrotina da pilha
	pop R5
	pop R4
	pop R3
	pop R1
	pop R0
	rts

	
imprimeCaractere:
	push R0
	push R1
	push R2
	push R3
	push R4
	
	loadn R3, #'\0' 						; criterio de parada

	
imprimeCaractereLoop:
	loadi R4, R1 						; carrega em R4(41), o endereco de memoria de R1(primeira linha do cenario)
	cmp R4, R3 							; compara R4 com \0
	jeq imprimeCaractereSai
	add R4, R2, R4							; coloca cor branca no caracter
	outchar R4, R0 							; imprime caracter na posicao RX
	inc R0								; incrementa
	inc R1
	jmp imprimeCaractereLoop

	
imprimeCaractereSai:
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts


imprimeDigite:
	push R0								
	push R1
	push R2								; registrador que vai guardar endereco da string ?
	push R3

	loadn R0, #digite						; string
	loadn R1, #'\0'
	loadi R2, R0 							; conteudo do endereco da string[R0] passa para R2 
	loadn R3, #600 							; posicao no video

	imprimeDigiteLoop:
		cmp R2, R1 						; compara \0 com R2
		jeq imprimeDigiteLoopSair
		outchar R2, R3						; imprime caractere da string na posicao do video R3
		inc R0							; incrementa a string
		inc R3							; incrementa posicao no video
		loadi R2, R0 						; conteudo do endereco da string[R0] passa para R2 apos o incremento
		jmp imprimeDigiteLoop
		

imprimeDigiteLoopSair:
	pop R3
	pop R2
	pop R1
	pop R0
	rts
		



lerPalavra:
	push R0 
	push R1
	push R2
	push R3
	push R4 							; registrador temporario para inchar
	push R5

	loadn R0, #palavra						; string que sera guardada no vetor
	loadn R1, #255							; caractere invalido
	loadn R2, #13 							; tecla ENTER
	loadn R3, #'\0'
	loadn R5, #621							; posicao no video para teste de impressao da palavra

	lerPalavraLoop:
		
			inchar R4
			cmp R4, R1					; verifica se caractere eh invalido
			jeq lerPalavraLoop 					; se caractere for invalido, ler tecla novamente
			cmp R4, R2 					; quando todos caracteres forem digitados e for ENTER
								
			jeq lerPalavraSair 				; se ENTER, sai da funcao
			;outchar R4, R5 				; imprime p/ teste (obs: no jogo da forca iremos omitir essa linha)
			storei R0, R4 					; endereco do caractere temporario eh passado para a string
			inc R0						; incrementa a string
			inc R5						; incrementa posicao no video
			jmp lerPalavraLoop

lerPalavraSair:
	inc R0 								; incrementa string para colocar \0 no final da palavra
	storei R0, R3 							; coloca \0 no final da string

	
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
					

imprimeRiscos:				
	push R0
	push R1								; para guardar o endereco da string
	push R3
	push R4
	push R5
	push R6
	
	loadn R0, #palavra						; guarda o endereco da string
	loadn R3, #'\0'							; quando a palavra era banana, o R3 era #6 que era \0 		
	loadn R4, #0 							; indice para percorrer o vetor
	loadn R5, #'_'
	loadn R6, #760  						; posicao de impressao
	
imprimeRiscosLoop:
	loadi R1, R0							; carrega em R1 o endereco da string
	cmp R1, R3							; se posicao na string for igual a \0, sai
	jeq imprimeRiscosSai 
	outchar R5, R6 							
	inc R0								; incrementa a string
	inc R6								; incrementa posicao no video
	
	push R2								; empilha um registrado auxiliar na pilha
	load R2, acertototal						; carrega ele com o valor de acertototal
	inc R2								; incremente acertototal
	store acertototal, R2						; salva acertototal incrementado
	pop R2								; desempilha R2
	
	jmp imprimeRiscosLoop


imprimeRiscosSai:
	pop R6
	pop R5
	pop R4
	pop R3
	pop R1
	pop R0
	rts 	
	
leCaractere:
	push R2
	push R3
	push R4
	push R6
	push R7
	
	loadn R6, #255
	loadn R3, #1
	
	load R2, palavraDigitada
	
loopLeCaractere:
	inchar R4 					
	cmp R4, R6							; se caractere for invalido (255), digita novamente
	jeq loopLeCaractere
	;call jaFoiDigitado
	;cmp R2,R1
	;jeq loopLeCaractere

	;breakp
	
	call comparaLetra

	load R7, flagacerto
	loadn R7, #0
	store flagacerto, R7
	pop R7



	jmp leCaractereSai
	
leCaractereSai:
	pop R6
	pop R4
	pop R3
	pop R2
	
	rts
	
comparaLetra:
	push R1
	push R2
	push R3
	push R5
	push R6
	push R7
	
	load R7, acerto							; carrega o valor inicial de acerto
	loadn R1, #palavra 						; carrega em R1 a string
	loadn R6, #'\0'
	
loopComparaLetra:
	loadi R2, R1 							; carrega em R2, o endereco da palavra 
	cmp R2, R6							; compara com \0 para ver se ja comparou com todas as letras da palavra
	jeq comparaLetraSai						; se for igual sai
	cmp R4, R2 							; compara o caractere digitado com a letra da palavra
	jeq imprimeLetraCorreta						; se for igual imprime a letra
	
	inc R1
	load R3, posicao
	inc R3
	store posicao, R3

	jmp loopComparaLetra
	
comparaLetraSai:

	pop R7
	pop R6
	pop R5
	pop R3
	pop R2
	pop R1

	push R0
	push R3
	push R4
	push R5

	load R3, posicao
	loadn R3, #0
	store posicao, R3
	
	loadn R5, #0
	load R4, flagacerto
	
	cmp R4, R5
	jeq incrementaErro
	
	pop R5
	pop R4
	pop R3
	pop R0

	rts
	

incrementaErro:

	load R0, erro
	inc R0
	store erro, R0
	call imprimeCarinha
	loadn R4, #0
	store flagacerto, R4

	pop R5
	pop R4
	pop R3
	pop R0
	
	rts

jaFoiDigitado:
	push R0
	push R1
	push R2
	
	loadn R0, #letraDigitada
	loadn R1, #'\0'

loopJaFoiDigitado:
	loadi R2, R0
	cmp R2,R1
	jeq jaFoiDigitadoSetaZeroSai
	cmp R4,R0
	jeq jaFoiDigitadoSetaUmSai
	inc R0
	
	jmp loopJaFoiDigitado


jaFoiDigitadoSetaZeroSai:

	pop R2
	pop R1
	pop R0


	push R2
	
								; empilha um registrado auxiliar na pilha
	load R2, palavraDigitada						; carrega ele com o valor de acertototal
	loadn R2, #0								; incremente acertototal
	store palavraDigitada, R2						; salva acertototal incrementado
	
	pop R2

        push R1
	loadn R1, #letraDigitada
	loadi R1, R4
	store letraDigitada, R1
	pop R1			
	
	rts


jaFoiDigitadoSetaUmSai:

	pop R2
	pop R1
	pop R0


	push R2
	
									; empilha um registrado auxiliar na pilha
	load R2, palavraDigitada						; carrega ele com o valor de acertototal
	loadn R2, #1								; incremente acertototal
	store palavraDigitada, R2						; salva acertototal incrementado
	
	pop R2			

	
	rts	
	

imprimeCarinha: ;chamar com call apos incremento do erro
      push R0 ;caractere
      push R1 ;posicao na tela
      push R2
      push R3 ;numero inteiro para comparar com R2
      
      loadn R3, #1
      load R2, erro                                             ; quantidade de erros
      
      cmp R2, R3 ; erro valendo 1
      ceq imprimeCabeca
      inc R3 ; R3 vai valer 2 caso a comparacao acima nao for igual
      
      cmp R2, R3 ; erro valendo 2
      ceq imprimeCorpo
      inc R3
      cmp R2, R3 ; erro valendo 3
      ceq imprimeBracoEsquerdo
      inc R3
      cmp R2, R3 ; erro valendo 4
      ceq imprimeBracoDireto
      inc R3
      cmp R2, R3 ; erro valendo 5
      ceq imprimeCalca
      inc R3
      cmp R2, R3 ; erro valendo 6
      ceq imprimePernaEsquerda
      inc R3
      cmp R2, R3 ; erro valendo 7
      ceq imprimePernaDireita
      
      
      
      pop R3
      pop R2
      pop R1
      pop R0
      
      rts
      
imprimeCabeca:
      push R0
      push R1
      loadn R0, #'O'
      loadn R1, #203
      outchar R0, R1
      pop R1
      pop R0
      
      rts
      
imprimeCorpo:
      push R0
      push R1
      loadn R0, #'|'
      loadn R1, #243
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
imprimeBracoEsquerdo:
      push R0
      push R1
      loadn R0, #'_'
      loadn R1, #242
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
imprimeBracoDireto:
      push R0
      push R1
      loadn R0, #'_'
      loadn R1, #244
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
imprimeCalca:
      push R0
      push R1
      loadn R0, #'|'
      loadn R1, #283
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
imprimePernaEsquerda:
      push R0
      push R1
      loadn R0, #'('
      loadn R1, #322
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
imprimePernaDireita:
      push R0
      push R1
      loadn R0, #')'
      loadn R1, #324
      outchar R0, R1
      pop R1
      pop R0
      
      rts      
      
	
imprimeLetraCorreta:
	push R3
	push R2
	push R6
	
	loadn R3, #720
	load R5, posicao
	
	load R6, flagacerto                                             ; coloca 1 na flag acerto quando o jogador acertou
	loadn R6, #1
	store flagacerto, R6
	pop R6
	
	add R3, R3, R5							; ajusta a posicao da letra na tela
	outchar R4, R3							; imprime caractere digitado na posicao 720
	inc R1								; incrementa indice da palavra
	inc R5								; incrementa posicao no video
	store posicao, R5						; guarda a posicao
	pop R3

	load R2, acerto
	inc R2
	store acerto, R2
	pop R2


	
	jmp loopComparaLetra



jogo:
	push R1
	push R2
	push R3
	push R4

	
	load R3, acertototal
	loadn R4, #8 ; quantidade de erros

loopjogo:
	load R1, acerto
	load R2, erro
	
	cmp R1,R3
	jeq imprimeTelaVenceu				; depois imprime mensagem ganhou
	cmp R2,R4
	jeq imprimeTelaPerdeu				; depois imprime mensagem perdeu
	call leCaractere

	;breakp

	jmp loopjogo

	
jogoFim:
	jmp jogarNovamente
	;rts
	;call imprimeTelaVenceu
      
 imprimeTelaVenceu:
	pop R4
	pop R3
	pop R2
	pop R1
	
	
	push R1
	push R2
	
	loadn R1, #tela2Linha0 					; endereco de onde comeca a primeira linha do cenario
	loadn R2, #2816						;cor verde
	call imprimeTela
	
	pop R2
	pop R1
	
	jmp jogoFim
	;jmp jogarNovamente
 
 
imprimeTelaPerdeu:
	pop R4
	pop R3
	pop R2
	pop R1
	
	
	push R1
	push R2
	
	loadn R1, #tela4Linha0 					; endereco de onde comeca a primeira linha do cenario
	loadn R2, #2304						;cor vermelha
	call imprimeTela
	
	pop R2
	pop R1
	
	jmp jogoFim
	;jmp jogarNovamente
	
	
jogarNovamente:

	push R3
	push R4
	push R5
	
	loadn R4, #'1' 			;jogar novamente
	loadn R5, #'0' 			;nao jogar novamente
	
	loopInput:
	   	inchar R3
		cmp R3, R4
		jeq recomecarJogo
		cmp R3, R5
		jeq sairJogo
		jne loopInput
	
recomecarJogo:
	pop R5
	pop R4
        pop R3
        
        
        ;pop R2
	;pop R1
	jmp zeravariaveis
	;call zeravariaveis
	;rts
	; Como voltar para o inicio do jogo apos reinicializar variaveis ?
	
sairJogo:
	pop R5
	pop R4
	pop R3
	rts
	;pop R2
	;pop R1
	;jmp zeravariaveis
	
