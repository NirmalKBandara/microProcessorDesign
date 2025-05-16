library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AdderSubtractor4bitUnit is
    Port (
        A        : in  STD_LOGIC_VECTOR(3 downto 0);
        B        : in  STD_LOGIC_VECTOR(3 downto 0);
        ADD_SUB  : in  STD_LOGIC;
        RESULT   : out STD_LOGIC_VECTOR(3 downto 0);
        C_OUT    : out STD_LOGIC;
        OVERFLOW : out STD_LOGIC;
        ZERO     : out STD_LOGIC
    );
end AdderSubtractor4bitUnit;

architecture Behavioral of AdderSubtractor4bitUnit is
    
    component RCA_4
        Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           C_IN : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(3 downto 0);
           C_OUT : out STD_LOGIC);
    end component;

    signal A_mod  : STD_LOGIC_VECTOR(3 downto 0);
    signal B_mod  : STD_LOGIC_VECTOR(3 downto 0);
    signal S  : STD_LOGIC_VECTOR(3 downto 0);

begin
    A_mod <= A when (ADD_SUB = '0') else not(A);
    B_mod <= B when (ADD_SUB = '0') else (others => '0');
    
    RCA_4_0: RCA_4
    port map(
        A  => A_mod,
        B  => B_mod,
        C_IN => ADD_SUB,
        S => S,
        C_OUT => OVERFLOW);
   
    RESULT <= S;
    ZERO <= not (S(0) OR S(1) OR S(2) OR S(3));

end Behavioral;
