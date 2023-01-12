module HALT(input halt,
            output reg not_stall,
            output reg LE);

initial not_stall=1;

always @ ( * )
begin            
    if ( halt ) 
        LE=0;
    else 
        LE=1;
end
          
endmodule
