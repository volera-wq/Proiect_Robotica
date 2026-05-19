MODULE Module1
    VAR num num1;
    VAR num num2;
    VAR num opt;
    PERS tooldata Efector:=[TRUE,[[0,0.033033672,184.3],[1,0,0,0]],[1.5,[0,0,90],[1,0,0,0],0.01,0.01,0.01]];
    CONST robtarget T0_1:=[[19.546905251,50.498673106,41.130717679],[0.705400436,-0.000783768,0.708808148,-0.000787554],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T0_2:=[[51.036539581,29.778387043,41.025004577],[0.705400436,-0.000783768,0.708808148,-0.000787554],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T0_3:=[[91.733066975,57.74988216,40.766718096],[0.705400436,-0.000783768,0.708808148,-0.000787554],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T0_4:=[[46.188595861,75.181326856,40.947473953],[0.705400436,-0.000783768,0.708808148,-0.000787554],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    PROC main()
        TPReadNum num1, "Numar 1: ";
        TPReadFK opt, "Operatia: ", "Add", "Minus", "Mult", "Div", stEmpty;
        TPReadNum num2, "Numar2: ";
        
        
        
        
    ENDPROC
    
    
    FUNC num Calc(num n1, num n2, num op)
        IF op = 1 THEN
            RETURN n1 + n2;
        ELSEIF op = 2 THEN
            RETURN n1 - n2;
        ELSEIF op = 3 THEN
            RETURN n1 * n2;
        ELSE
            RETURN n1 - n2;
        ENDIF
    ENDFUNC
    PROC Path_10()
        MoveL T0_1,v200,fine,Efector\WObj:=Workobject_1;
        MoveL T0_2,v200,fine,Efector\WObj:=Workobject_1;
        MoveL T0_3,v200,fine,Efector\WObj:=Workobject_1;
        MoveL T0_4,v200,fine,Efector\WObj:=Workobject_1;
        MoveL T0_1,v200,fine,Efector\WObj:=Workobject_1;
    ENDPROC
    
    
    
    
    

ENDMODULE
