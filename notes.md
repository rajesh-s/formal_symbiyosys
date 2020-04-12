# Notes from the course

- Formal Verification uses SMT solvers
- For circuit analysis SAT and SMT solvers can be used to answer questions like: “Given a circuit, is there a state with property A that has a valid transition to another state with property B.”
- Cover proves that something is reachable, it is a liveness property.
- Think of cover as solving a puzzle to reach a desired solution, on the other hand prove will try to counter-prove a specified assertion within the specified bound
- A fail does not generate a trace, so add cover where required
- assume() are common for both cover/prove. assert() is used for prove only. cover() is used for cover only
- Don't assume outputs, use it inside a if statement instead
- The cover(), assume(), assert() statements compulsorily have to be in always block (event-controlled)
- A failed cover will not generate a trace
- Regarding initial assumes, there is a bug in the verific parser that yosys uses in Symbiotic Suite that stops this working. So as a work around you can use the same technique as f_past_valid

DOUBT: ASK WHAT IS THE DIFFERENCE BETWEEN K-INDUCTION

## Binding Formal properties in a design

```verilog

module ();

    `ifdef FORMAL
        reg f_past_valid = 0;

        // assume startup in reset
        always @(posedge clk) begin
            f_past_valid <= 1;
            if(f_past_valid == 0)
                assume(reset);
        end
    `endif

endmodule

```

## sby

- The -f option while invoking sbf will clean the result directory

```bash
Available options are:

[tasks]
cover
prove
#  When run with no arguments; sby will run all the tasks. To run just one, provide the name of the task as an argument to sby: sby -f busyctr.sby prove

[options] #To be able to individually run
prove: mode bmc
cover: mode cover
cover: depth <n> #Number of cycles
cover: append <n> #Append n cycles to the cover

[engines]
smtbmc yices # Can be any one also

[script]
read -verific # For assertion support ONLY
read -formal busyctr.v # Yosys command
prep -top busyctr # Top module
opt -share_all
cutpoint <module_name> # Cutpoint removes the nets after the cutpoint. Typically it's used to make a design smaller. It just makes things a bit faster#
# Use time sby -f ...sby to time your runtime. Cutpoint helps in isolating modules that you maybe specifically interested in to reduce runtime

[files]
busyctr.v # In the paid version of sby, the formal property can be in a separate file. Check the traffic_lights example

```