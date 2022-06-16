module count_zeros(data,reset,read,clk,zeros,is_legal,
                   data_ready);

    parameter TRUE=1, FALSE=0;

    input  data, reset, read, clk;
    output is_legal, data_ready;
    output [3:0] zeros;
    reg  [3:0] zeros;

    reg is_legal, data_ready;
    reg seenZero, new_seenZero;
    reg seenTrailing, new_seenTrailing;
    reg new_is_legal;
    reg new_data_ready;
    reg [3:0] new_zeros;
    reg [2:0] bits_seen, new_bits_seen;

always @ ( data or reset or read or is_legal
           or data_ready or seenTrailing or
            seenZero ) begin
        if ( reset ) begin
            new_data_ready   = FALSE;
            new_is_legal     = TRUE;
            new_seenZero     = FALSE;
            new_seenTrailing = FALSE;
            new_zeros        = 0;
            new_bits_seen    = 0;
        end
                    else begin
            new_is_legal     = is_legal;
            new_seenZero     = seenZero;
            new_seenTrailing = seenTrailing;
            new_zeros        = zeros;
            new_bits_seen    = bits_seen;
            new_data_ready   = data_ready;
             if ( read ) begin
               if ( seenTrailing  && (data == 0) )
                  begin
                  new_is_legal   = FALSE;
                  new_zeros      = 0;
                  new_data_ready = TRUE;
                  end
               else if ( seenZero && (data == 1) )
                  new_seenTrailing = TRUE;

               else if ( data == 0 ) begin
                  new_seenZero = TRUE;
                  new_zeros = zeros + 1;
                  end

               if ( bits_seen == 7 )
                  new_data_ready = TRUE;
               else
                  new_bits_seen = bits_seen+1;
            end
        end
    end

always @ ( posedge clk) begin
     zeros = new_zeros;
     bits_seen = new_bits_seen;
     seenZero = new_seenZero;
     seenTrailing = new_seenTrailing;
     is_legal = new_is_legal;
     data_ready = new_data_ready;
end
endmodule

