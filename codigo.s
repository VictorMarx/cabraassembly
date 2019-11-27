        .data
msg1:   .asciiz "Insira o primeiro numero:\n"
msg2:	.asciiz "Insira o segundo numero:\n"
msg3:   .asciiz "A media dos numeros é:\n"
	.extern foobar 4
num1:   .word 2	
media:  .word 0	
	
	.text
	.globl main
main: 	li $v0, 4       #Printa primeira mensagem
        la $a0, msg1     
        syscall 
        
        li $v0,5	#Le o primeiro inteiro
        syscall
        move $s0,$v0
        
        li $v0,4	#Printa segunda mensagem
        la $a0, msg2
        syscall
        
        li $v0,5	#Le o segundo inteiro
        syscall
        move $s1,$v0
        
        add $s2,$s1,$s0	
        lw $t1, num1
        div $s3, $s2, $t1	#Pega a média dos dois números
        
        sw $s3, media
        li $v0,1		#Printando a média natural dos dois números
        lw $a0, media
	syscall
	
	jr $ra
        
              
		
