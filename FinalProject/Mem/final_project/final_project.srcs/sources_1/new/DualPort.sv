module DualPort(
input [5:0] currentRow,
input [6:0] currentCol,
input [5:0] vCount,
input [6:0] hCount,
input enableVisual,
input enableData,
input readWrite,
input clk,
input reset,
input [1:0] dataIn,
output reg [1:0] dataBack,
output reg [1:0] colorData 
);


reg [59:0][79:0][1:0] m_data;    

always @ (posedge clk) begin
    if(enableVisual)
        colorData = m_data[vCount][hCount];
    else 
        colorData = 2'bz;
end

always @(posedge clk) begin
   if(enableData) begin
   if(readWrite) begin
            dataBack = m_data[currentRow][currentCol];
    end
   else begin 
            dataBack=2'bz;
            m_data[currentRow][currentCol] = dataIn;
   end
    end
    else
        dataBack=2'bz;
end

endmodule