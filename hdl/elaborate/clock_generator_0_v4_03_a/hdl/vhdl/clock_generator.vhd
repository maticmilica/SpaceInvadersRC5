------------------------------------------------------------------------------
-- C:/materija/RA77-2013/LPRS2_projekat-master/LPRS2_projekat-master/LPRS2_projekat-master/hdl/elaborate/clock_generator_0_v4_03_a/hdl/vhdl/clock_generator.vhd
------------------------------------------------------------------------------

-- ClkGen Wrapper HDL file generated by ClkGen's TCL generator 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.numeric_std.all;

library Unisim;
use Unisim.vcomponents.all;

library clock_generator_v4_03_a;
use clock_generator_v4_03_a.all;


entity clock_generator is
  generic (
    C_FAMILY           : string   := "spartan6" ;
    C_DEVICE           : string   := "6slx45";
    C_PACKAGE          : string   := "fgg676";
    C_SPEEDGRADE       : string   := "-2";
    C_CLK_GEN          : string   := "PASSED"
  );
  port (
    -- clock generation
    CLKIN                         : in  std_logic;
    CLKOUT0                       : out std_logic;
    CLKOUT1                       : out std_logic;
    CLKOUT2                       : out std_logic;
    CLKOUT3                       : out std_logic;
    CLKOUT4                       : out std_logic;
    CLKOUT5                       : out std_logic;
    CLKOUT6                       : out std_logic;
    CLKOUT7                       : out std_logic;
    CLKOUT8                       : out std_logic;
    CLKOUT9                       : out std_logic;
    CLKOUT10                      : out std_logic;
    CLKOUT11                      : out std_logic;
    CLKOUT12                      : out std_logic;
    CLKOUT13                      : out std_logic;
    CLKOUT14                      : out std_logic;
    CLKOUT15                      : out std_logic;
    -- external feedback 
    CLKFBIN                       : in  std_logic;
    CLKFBOUT                      : out std_logic;
    -- variable phase shift
    PSCLK                         : in  std_logic;
    PSEN                          : in  std_logic;
    PSINCDEC                      : in  std_logic;
    PSDONE                        : out std_logic;
    -- reset
    RST                           : in  std_logic;
    LOCKED                        : out std_logic
  );
end clock_generator;


architecture STRUCTURE of clock_generator is


  ----------------------------------------------------------------------------
  -- Components ( copy from entity, exact the same in low level parameters )
  ----------------------------------------------------------------------------

  component pll_module is
    generic (
      C_BANDWIDTH              : string  := "OPTIMIZED";           
      C_CLKFBOUT_MULT          : integer := 1;  
      C_CLKFBOUT_PHASE         : real    := 0.0;  
      C_CLKIN1_PERIOD          : real    := 0.000;  
      -- C_CLKIN2_PERIOD       : real    := 0.000;  
      C_CLKOUT0_DIVIDE         : integer := 1;  
      C_CLKOUT0_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT0_PHASE          : real    := 0.0;  
      C_CLKOUT1_DIVIDE         : integer := 1;  
      C_CLKOUT1_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT1_PHASE          : real    := 0.0;  
      C_CLKOUT2_DIVIDE         : integer := 1;  
      C_CLKOUT2_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT2_PHASE          : real    := 0.0;  
      C_CLKOUT3_DIVIDE         : integer := 1;  
      C_CLKOUT3_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT3_PHASE          : real    := 0.0;  
      C_CLKOUT4_DIVIDE         : integer := 1;  
      C_CLKOUT4_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT4_PHASE          : real    := 0.0;  
      C_CLKOUT5_DIVIDE         : integer := 1;  
      C_CLKOUT5_DUTY_CYCLE     : real    := 0.5;  
      C_CLKOUT5_PHASE          : real    := 0.0;  
      C_COMPENSATION           : string  := "SYSTEM_SYNCHRONOUS";  
      C_DIVCLK_DIVIDE          : integer := 1;  
      -- C_EN_REL              : boolean := false;  
      -- C_PLL_PMCD_MODE       : boolean := false;  
      C_REF_JITTER             : real    := 0.100;  
      C_RESET_ON_LOSS_OF_LOCK  : boolean := false;  
      C_RST_DEASSERT_CLK       : string  := "CLKIN1";  
      C_CLKOUT0_DESKEW_ADJUST  : string  := "NONE";  
      C_CLKOUT1_DESKEW_ADJUST  : string  := "NONE";  
      C_CLKOUT2_DESKEW_ADJUST  : string  := "NONE"; 
      C_CLKOUT3_DESKEW_ADJUST  : string  := "NONE"; 
      C_CLKOUT4_DESKEW_ADJUST  : string  := "NONE"; 
      C_CLKOUT5_DESKEW_ADJUST  : string  := "NONE"; 
      C_CLKFBOUT_DESKEW_ADJUST : string  := "NONE"; 
      C_CLKIN1_BUF             : boolean := false;
      -- C_CLKIN2_BUF          : boolean := false;
      C_CLKFBOUT_BUF           : boolean := false;
      C_CLKOUT0_BUF            : boolean := false;
      C_CLKOUT1_BUF            : boolean := false;
      C_CLKOUT2_BUF            : boolean := false;
      C_CLKOUT3_BUF            : boolean := false;
      C_CLKOUT4_BUF            : boolean := false;
      C_CLKOUT5_BUF            : boolean := false;
      C_EXT_RESET_HIGH         : integer := 1;
      C_FAMILY                 : string  := "spartan6"
      );
    port (
      CLKFBDCM         : out std_logic;
      CLKFBOUT         : out std_logic;
      CLKOUT0          : out std_logic;
      CLKOUT1          : out std_logic;
      CLKOUT2          : out std_logic;
      CLKOUT3          : out std_logic;
      CLKOUT4          : out std_logic;
      CLKOUT5          : out std_logic;
      CLKOUTDCM0       : out std_logic;
      CLKOUTDCM1       : out std_logic;
      CLKOUTDCM2       : out std_logic;
      CLKOUTDCM3       : out std_logic;
      CLKOUTDCM4       : out std_logic;
      CLKOUTDCM5       : out std_logic;
      -- DO               : out std_logic_vector (15 downto 0);
      -- DRDY             : out std_logic;
      LOCKED           : out std_logic;
      CLKFBIN          : in  std_logic;
      CLKIN1           : in  std_logic;
      -- CLKIN2           : in  std_logic;
      -- CLKINSEL         : in  std_logic;
      -- DADDR            : in  std_logic_vector (4 downto 0);
      -- DCLK             : in  std_logic;
      -- DEN              : in  std_logic;
      -- DI               : in  std_logic_vector (15 downto 0);
      -- DWE              : in  std_logic;
      -- REL              : in  std_logic;
      RST              : in  std_logic
      );
  end component;


  ----------------------------------------------------------------------------
  -- Functions
  ----------------------------------------------------------------------------

  -- Note : The string functions are put here to remove dependency to other pcore level libraries

  function UpperCase_Char(char : character) return character is
  begin
    -- If char is not an upper case letter then return char
    if char < 'a' or char > 'z' then
      return char;
    end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
    case char is
      when 'a'    => return 'A'; when 'b' => return 'B'; when 'c' => return 'C'; when 'd' => return 'D';
      when 'e'    => return 'E'; when 'f' => return 'F'; when 'g' => return 'G'; when 'h' => return 'H';
      when 'i'    => return 'I'; when 'j' => return 'J'; when 'k' => return 'K'; when 'l' => return 'L';
      when 'm'    => return 'M'; when 'n' => return 'N'; when 'o' => return 'O'; when 'p' => return 'P';
      when 'q'    => return 'Q'; when 'r' => return 'R'; when 's' => return 'S'; when 't' => return 'T';
      when 'u'    => return 'U'; when 'v' => return 'V'; when 'w' => return 'W'; when 'x' => return 'X';
      when 'y'    => return 'Y'; when 'z' => return 'Z';
      when others => return char;
    end case;
  end UpperCase_Char;

  function UpperCase_String (s : string) return string is
    variable res               : string(s'range);
  begin  -- function LoweerCase_String
    for I in s'range loop
      res(I) := UpperCase_Char(s(I));
    end loop;  -- I
    return res;
  end function UpperCase_String;

  -- Returns true if case insensitive string comparison determines that
  -- str1 and str2 are equal
  function equalString( str1, str2 : string ) return boolean is
    constant len1                  : integer := str1'length;
    constant len2                  : integer := str2'length;
    variable equal                 : boolean := true;
  begin
    if not (len1 = len2) then
      equal := false;
    else
      for i in str1'range loop
        if not (UpperCase_Char(str1(i)) = UpperCase_Char(str2(i))) then
          equal := false;
        end if;
      end loop;
    end if;

    return equal;
  end equalString;


  ----------------------------------------------------------------------------
  -- Signals
  ----------------------------------------------------------------------------

  -- signals: gnd

  signal net_gnd0  : std_logic;
  signal net_gnd1  : std_logic_vector(0 to 0);
  signal net_gnd16 : std_logic_vector(0 to 15);

  -- signals: vdd

  signal net_vdd0  : std_logic;


  -- signals : PLL0 wrapper
 
  signal   SIG_PLL0_CLKFBDCM         : std_logic;
  signal   SIG_PLL0_CLKFBOUT         : std_logic;
  signal   SIG_PLL0_CLKOUT0          : std_logic;
  signal   SIG_PLL0_CLKOUT1          : std_logic;
  signal   SIG_PLL0_CLKOUT2          : std_logic;
  signal   SIG_PLL0_CLKOUT3          : std_logic;
  signal   SIG_PLL0_CLKOUT4          : std_logic;
  signal   SIG_PLL0_CLKOUT5          : std_logic;
  signal   SIG_PLL0_CLKOUTDCM0       : std_logic;
  signal   SIG_PLL0_CLKOUTDCM1       : std_logic;
  signal   SIG_PLL0_CLKOUTDCM2       : std_logic;
  signal   SIG_PLL0_CLKOUTDCM3       : std_logic;
  signal   SIG_PLL0_CLKOUTDCM4       : std_logic;
  signal   SIG_PLL0_CLKOUTDCM5       : std_logic;
  signal   SIG_PLL0_LOCKED           : std_logic;
  signal   SIG_PLL0_CLKFBIN          : std_logic;
  signal   SIG_PLL0_CLKIN1           : std_logic;
  signal   SIG_PLL0_RST              : std_logic;

  signal   SIG_PLL0_CLKFBOUT_BUF     : std_logic;
  signal   SIG_PLL0_CLKOUT0_BUF      : std_logic;
  signal   SIG_PLL0_CLKOUT1_BUF      : std_logic;
  signal   SIG_PLL0_CLKOUT2_BUF      : std_logic;
  signal   SIG_PLL0_CLKOUT3_BUF      : std_logic;
  signal   SIG_PLL0_CLKOUT4_BUF      : std_logic;
  signal   SIG_PLL0_CLKOUT5_BUF      : std_logic;


begin


  ----------------------------------------------------------------------------
  -- GND and VCC signals
  ----------------------------------------------------------------------------

  net_gnd0           <= '0';
  net_gnd1(0 to 0)   <= B"0";
  net_gnd16(0 to 15) <= B"0000000000000000";

  net_vdd0           <= '1';


  ----------------------------------------------------------------------------
  -- DCM wrappers
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- PLL wrappers
  ----------------------------------------------------------------------------


  -- PLL0 wrapper
 
  PLL0_INST : pll_module
    generic map (
      C_BANDWIDTH => "OPTIMIZED",
      C_CLKFBOUT_MULT => 20,
      C_CLKFBOUT_PHASE => 0.0,
      C_CLKIN1_PERIOD => 20.000000,
      C_CLKOUT0_DIVIDE => 10,
      C_CLKOUT0_DUTY_CYCLE => 0.5,
      C_CLKOUT0_PHASE => 0.0000,
      C_CLKOUT1_DIVIDE => 1,
      C_CLKOUT1_DUTY_CYCLE => 0.5,
      C_CLKOUT1_PHASE => 0.0,
      C_CLKOUT2_DIVIDE => 1,
      C_CLKOUT2_DUTY_CYCLE => 0.5,
      C_CLKOUT2_PHASE => 0.0,
      C_CLKOUT3_DIVIDE => 1,
      C_CLKOUT3_DUTY_CYCLE => 0.5,
      C_CLKOUT3_PHASE => 0.0,
      C_CLKOUT4_DIVIDE => 1,
      C_CLKOUT4_DUTY_CYCLE => 0.5,
      C_CLKOUT4_PHASE => 0.0,
      C_CLKOUT5_DIVIDE => 1,
      C_CLKOUT5_DUTY_CYCLE => 0.5,
      C_CLKOUT5_PHASE => 0.0,
      C_COMPENSATION => "SYSTEM_SYNCHRONOUS",
      C_DIVCLK_DIVIDE => 1,
      C_REF_JITTER => 0.100,
      C_RESET_ON_LOSS_OF_LOCK => false,
      C_RST_DEASSERT_CLK => "CLKIN1",
      C_CLKOUT0_DESKEW_ADJUST => "NONE",
      C_CLKOUT1_DESKEW_ADJUST => "NONE",
      C_CLKOUT2_DESKEW_ADJUST => "NONE",
      C_CLKOUT3_DESKEW_ADJUST => "NONE",
      C_CLKOUT4_DESKEW_ADJUST => "NONE",
      C_CLKOUT5_DESKEW_ADJUST => "NONE",
      C_CLKFBOUT_DESKEW_ADJUST => "NONE",
      C_CLKIN1_BUF => false,
      C_CLKFBOUT_BUF => false,
      C_CLKOUT0_BUF => false,
      C_CLKOUT1_BUF => false,
      C_CLKOUT2_BUF => false,
      C_CLKOUT3_BUF => false,
      C_CLKOUT4_BUF => false,
      C_CLKOUT5_BUF => false,
      C_EXT_RESET_HIGH => 0,
      C_FAMILY => "spartan6"
      )
    port map (
      CLKFBDCM                 => SIG_PLL0_CLKFBDCM,
      CLKFBOUT                 => SIG_PLL0_CLKFBOUT,
      CLKOUT0                  => SIG_PLL0_CLKOUT0,
      CLKOUT1                  => SIG_PLL0_CLKOUT1,
      CLKOUT2                  => SIG_PLL0_CLKOUT2,
      CLKOUT3                  => SIG_PLL0_CLKOUT3,
      CLKOUT4                  => SIG_PLL0_CLKOUT4,
      CLKOUT5                  => SIG_PLL0_CLKOUT5,
      CLKOUTDCM0               => SIG_PLL0_CLKOUTDCM0,
      CLKOUTDCM1               => SIG_PLL0_CLKOUTDCM1,
      CLKOUTDCM2               => SIG_PLL0_CLKOUTDCM2,
      CLKOUTDCM3               => SIG_PLL0_CLKOUTDCM3,
      CLKOUTDCM4               => SIG_PLL0_CLKOUTDCM4,
      CLKOUTDCM5               => SIG_PLL0_CLKOUTDCM5,
      -- DO
      -- DRDY
      LOCKED                   => SIG_PLL0_LOCKED,
      CLKFBIN                  => SIG_PLL0_CLKFBIN,
      CLKIN1                   => SIG_PLL0_CLKIN1,
      -- CLKIN2
      -- CLKINSEL
      -- DADDR
      -- DCLK
      -- DEN
      -- DI
      -- DWE
      -- REL
      RST                      => SIG_PLL0_RST  
      );


  -- wrapper of clkout : CLKOUT0 


  PLL0_CLKOUT0_BUFG_INST : BUFG
    port map (
      I => SIG_PLL0_CLKOUT0,
      O => SIG_PLL0_CLKOUT0_BUF
      );


  -- wrapper of clkout : CLKOUT1 


  SIG_PLL0_CLKOUT1_BUF <= SIG_PLL0_CLKOUT1;


  -- wrapper of clkout : CLKOUT2 


  SIG_PLL0_CLKOUT2_BUF <= SIG_PLL0_CLKOUT2;


  -- wrapper of clkout : CLKOUT3 


  SIG_PLL0_CLKOUT3_BUF <= SIG_PLL0_CLKOUT3;


  -- wrapper of clkout : CLKOUT4 


  SIG_PLL0_CLKOUT4_BUF <= SIG_PLL0_CLKOUT4;


  -- wrapper of clkout : CLKOUT5 


  SIG_PLL0_CLKOUT5_BUF <= SIG_PLL0_CLKOUT5;


  -- wrapper of clkout : CLKFBOUT 


  PLL0_CLKFBOUT_BUFG_INST : BUFG
    port map (
      I => SIG_PLL0_CLKFBOUT,
      O => SIG_PLL0_CLKFBOUT_BUF
      );


  ----------------------------------------------------------------------------
  -- MMCM wrappers
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- PLLE wrappers
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- DCMs CLKIN, CLKFB and RST signal connection
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- PLLs CLKIN1, CLKFBIN and RST signal connection
  ----------------------------------------------------------------------------


  -- PLL0 CLKIN1
 
  SIG_PLL0_CLKIN1 <= CLKIN;

  -- PLL0 CLKFBIN
 
  SIG_PLL0_CLKFBIN <= SIG_PLL0_CLKFBOUT;

  -- PLL0 RST
 
  SIG_PLL0_RST <= RST;



  ----------------------------------------------------------------------------
  -- MMCMs CLKIN1, CLKFBIN, RST and Variable_Phase_Control signal connection
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- PLLEs CLKIN1, CLKFBIN, RST and Variable_Phase_Control signal connection
  ----------------------------------------------------------------------------


  ----------------------------------------------------------------------------
  -- CLKGEN CLKOUT, CLKFBOUT and LOCKED signal connection
  ----------------------------------------------------------------------------

  
  -- CLKGEN CLKOUT

  
  CLKOUT0 <= SIG_PLL0_CLKOUT0_BUF;
             

  CLKOUT1 <= '0';


  CLKOUT2 <= '0';


  CLKOUT3 <= '0';


  CLKOUT4 <= '0';


  CLKOUT5 <= '0';


  CLKOUT6 <= '0';


  CLKOUT7 <= '0';


  CLKOUT8 <= '0';


  CLKOUT9 <= '0';


  CLKOUT10 <= '0';


  CLKOUT11 <= '0';


  CLKOUT12 <= '0';


  CLKOUT13 <= '0';


  CLKOUT14 <= '0';


  CLKOUT15 <= '0';

  
  -- CLKGEN CLKFBOUT

  
  -- CLKGEN LOCKED 

  
  LOCKED <= SIG_PLL0_LOCKED; 


end architecture STRUCTURE;


------------------------------------------------------------------------------
-- High level parameters
------------------------------------------------------------------------------

-- C_CLK_GEN = PASSED
-- C_ELABORATE_DIR = 
-- C_ELABORATE_RES = NOT_SET
-- C_FAMILY = spartan6
-- C_DEVICE = 6slx45
-- C_PACKAGE = fgg676
-- C_SPEEDGRADE = -2

----------------------------------------

-- C_EXTRA_MMCM_FOR_DESKEW = 
-- C_MMCMExtra_CLKIN_FREQ = 
-- C_MMCMExtra_CLKOUT0 = 
-- C_MMCMExtra_CLKOUT1 = 
-- C_MMCMExtra_CLKOUT2 = 
-- C_MMCMExtra_CLKOUT3 = 
-- C_MMCMExtra_CLKOUT4 = 
-- C_MMCMExtra_CLKOUT5 = 
-- C_MMCMExtra_CLKOUT6 = 
-- C_MMCMExtra_CLKOUT7 = 
-- C_MMCMExtra_CLKOUT8 = 
-- C_MMCMExtra_CLKOUT9 = 
-- C_MMCMExtra_CLKOUT10 = 
-- C_MMCMExtra_CLKOUT11 = 
-- C_MMCMExtra_CLKOUT12 = 
-- C_MMCMExtra_CLKOUT13 = 
-- C_MMCMExtra_CLKOUT14 = 
-- C_MMCMExtra_CLKOUT15 = 
-- C_MMCMExtra_CLKFBOUT_MULT = 
-- C_MMCMExtra_DIVCLK_DIVIDE = 
-- C_MMCMExtra_CLKOUT0_DIVIDE = 
-- C_MMCMExtra_CLKOUT1_DIVIDE = 
-- C_MMCMExtra_CLKOUT2_DIVIDE = 
-- C_MMCMExtra_CLKOUT3_DIVIDE = 
-- C_MMCMExtra_CLKOUT4_DIVIDE = 
-- C_MMCMExtra_CLKOUT5_DIVIDE = 
-- C_MMCMExtra_CLKOUT6_DIVIDE = 
-- C_MMCMExtra_CLKOUT0_BUF = 
-- C_MMCMExtra_CLKOUT1_BUF = 
-- C_MMCMExtra_CLKOUT2_BUF = 
-- C_MMCMExtra_CLKOUT3_BUF = 
-- C_MMCMExtra_CLKOUT4_BUF = 
-- C_MMCMExtra_CLKOUT5_BUF = 
-- C_MMCMExtra_CLKOUT6_BUF = 
-- C_MMCMExtra_CLKFBOUT_BUF = 
-- C_MMCMExtra_CLKOUT0_PHASE = 
-- C_MMCMExtra_CLKOUT1_PHASE = 
-- C_MMCMExtra_CLKOUT2_PHASE = 
-- C_MMCMExtra_CLKOUT3_PHASE = 
-- C_MMCMExtra_CLKOUT4_PHASE = 
-- C_MMCMExtra_CLKOUT5_PHASE = 
-- C_MMCMExtra_CLKOUT6_PHASE = 

----------------------------------------

-- C_CLKIN_FREQ = 50000000

-- C_CLKOUT0_FREQ = 100000000
-- C_CLKOUT0_PHASE = 0
-- C_CLKOUT0_GROUP = NONE
-- C_CLKOUT0_BUF = TRUE
-- C_CLKOUT0_VARIABLE_PHASE = FALSE
-- C_CLKOUT1_FREQ = 0
-- C_CLKOUT1_PHASE = 0
-- C_CLKOUT1_GROUP = NONE
-- C_CLKOUT1_BUF = TRUE
-- C_CLKOUT1_VARIABLE_PHASE = FALSE
-- C_CLKOUT2_FREQ = 0
-- C_CLKOUT2_PHASE = 0
-- C_CLKOUT2_GROUP = NONE
-- C_CLKOUT2_BUF = TRUE
-- C_CLKOUT2_VARIABLE_PHASE = FALSE
-- C_CLKOUT3_FREQ = 0
-- C_CLKOUT3_PHASE = 0
-- C_CLKOUT3_GROUP = NONE
-- C_CLKOUT3_BUF = TRUE
-- C_CLKOUT3_VARIABLE_PHASE = FALSE
-- C_CLKOUT4_FREQ = 0
-- C_CLKOUT4_PHASE = 0
-- C_CLKOUT4_GROUP = NONE
-- C_CLKOUT4_BUF = TRUE
-- C_CLKOUT4_VARIABLE_PHASE = FALSE
-- C_CLKOUT5_FREQ = 0
-- C_CLKOUT5_PHASE = 0
-- C_CLKOUT5_GROUP = NONE
-- C_CLKOUT5_BUF = TRUE
-- C_CLKOUT5_VARIABLE_PHASE = FALSE
-- C_CLKOUT6_FREQ = 0
-- C_CLKOUT6_PHASE = 0
-- C_CLKOUT6_GROUP = NONE
-- C_CLKOUT6_BUF = TRUE
-- C_CLKOUT6_VARIABLE_PHASE = FALSE
-- C_CLKOUT7_FREQ = 0
-- C_CLKOUT7_PHASE = 0
-- C_CLKOUT7_GROUP = NONE
-- C_CLKOUT7_BUF = TRUE
-- C_CLKOUT7_VARIABLE_PHASE = FALSE
-- C_CLKOUT8_FREQ = 0
-- C_CLKOUT8_PHASE = 0
-- C_CLKOUT8_GROUP = NONE
-- C_CLKOUT8_BUF = TRUE
-- C_CLKOUT8_VARIABLE_PHASE = FALSE
-- C_CLKOUT9_FREQ = 0
-- C_CLKOUT9_PHASE = 0
-- C_CLKOUT9_GROUP = NONE
-- C_CLKOUT9_BUF = TRUE
-- C_CLKOUT9_VARIABLE_PHASE = FALSE
-- C_CLKOUT10_FREQ = 0
-- C_CLKOUT10_PHASE = 0
-- C_CLKOUT10_GROUP = NONE
-- C_CLKOUT10_BUF = TRUE
-- C_CLKOUT10_VARIABLE_PHASE = FALSE
-- C_CLKOUT11_FREQ = 0
-- C_CLKOUT11_PHASE = 0
-- C_CLKOUT11_GROUP = NONE
-- C_CLKOUT11_BUF = TRUE
-- C_CLKOUT11_VARIABLE_PHASE = FALSE
-- C_CLKOUT12_FREQ = 0
-- C_CLKOUT12_PHASE = 0
-- C_CLKOUT12_GROUP = NONE
-- C_CLKOUT12_BUF = TRUE
-- C_CLKOUT12_VARIABLE_PHASE = FALSE
-- C_CLKOUT13_FREQ = 0
-- C_CLKOUT13_PHASE = 0
-- C_CLKOUT13_GROUP = NONE
-- C_CLKOUT13_BUF = TRUE
-- C_CLKOUT13_VARIABLE_PHASE = FALSE
-- C_CLKOUT14_FREQ = 0
-- C_CLKOUT14_PHASE = 0
-- C_CLKOUT14_GROUP = NONE
-- C_CLKOUT14_BUF = TRUE
-- C_CLKOUT14_VARIABLE_PHASE = FALSE
-- C_CLKOUT15_FREQ = 0
-- C_CLKOUT15_PHASE = 0
-- C_CLKOUT15_GROUP = NONE
-- C_CLKOUT15_BUF = TRUE
-- C_CLKOUT15_VARIABLE_PHASE = FALSE

----------------------------------------

-- C_CLKFBIN_FREQ = 0
-- C_CLKFBIN_DESKEW = NONE

-- C_CLKFBOUT_FREQ = 0
-- C_CLKFBOUT_GROUP = NONE
-- C_CLKFBOUT_BUF = TRUE

----------------------------------------

-- C_PSDONE_GROUP = NONE

------------------------------------------------------------------------------
-- Low level parameters
------------------------------------------------------------------------------

-- C_CLKOUT0_MODULE = PLL0
-- C_CLKOUT0_PORT = CLKOUT0B
-- C_CLKOUT1_MODULE = NONE
-- C_CLKOUT1_PORT = NONE
-- C_CLKOUT2_MODULE = NONE
-- C_CLKOUT2_PORT = NONE
-- C_CLKOUT3_MODULE = NONE
-- C_CLKOUT3_PORT = NONE
-- C_CLKOUT4_MODULE = NONE
-- C_CLKOUT4_PORT = NONE
-- C_CLKOUT5_MODULE = NONE
-- C_CLKOUT5_PORT = NONE
-- C_CLKOUT6_MODULE = NONE
-- C_CLKOUT6_PORT = NONE
-- C_CLKOUT7_MODULE = NONE
-- C_CLKOUT7_PORT = NONE
-- C_CLKOUT8_MODULE = NONE
-- C_CLKOUT8_PORT = NONE
-- C_CLKOUT9_MODULE = NONE
-- C_CLKOUT9_PORT = NONE
-- C_CLKOUT10_MODULE = NONE
-- C_CLKOUT10_PORT = NONE
-- C_CLKOUT11_MODULE = NONE
-- C_CLKOUT11_PORT = NONE
-- C_CLKOUT12_MODULE = NONE
-- C_CLKOUT12_PORT = NONE
-- C_CLKOUT13_MODULE = NONE
-- C_CLKOUT13_PORT = NONE
-- C_CLKOUT14_MODULE = NONE
-- C_CLKOUT14_PORT = NONE
-- C_CLKOUT15_MODULE = NONE
-- C_CLKOUT15_PORT = NONE

----------------------------------------

-- C_CLKFBOUT_MODULE = NONE
-- C_CLKFBOUT_PORT = NONE
-- C_CLKFBOUT_get_clkgen_dcm_default_params = NONE

----------------------------------------

-- C_PSDONE_MODULE = NONE

----------------------------------------

-- C_DCM0_DFS_FREQUENCY_MODE = "LOW"
-- C_DCM0_DLL_FREQUENCY_MODE = "LOW"
-- C_DCM0_DUTY_CYCLE_CORRECTION = true
-- C_DCM0_CLKIN_DIVIDE_BY_2 = false
-- C_DCM0_CLK_FEEDBACK = "1X"
-- C_DCM0_CLKOUT_PHASE_SHIFT = "NONE"
-- C_DCM0_DSS_MODE = "NONE"
-- C_DCM0_STARTUP_WAIT = false
-- C_DCM0_PHASE_SHIFT = 0
-- C_DCM0_CLKFX_MULTIPLY = 4
-- C_DCM0_CLKFX_DIVIDE = 1
-- C_DCM0_CLKDV_DIVIDE = 2.0
-- C_DCM0_CLKIN_PERIOD = 41.6666666
-- C_DCM0_DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"
-- C_DCM0_CLKIN_BUF = false
-- C_DCM0_CLKFB_BUF = false
-- C_DCM0_CLK0_BUF = false
-- C_DCM0_CLK90_BUF = false
-- C_DCM0_CLK180_BUF = false
-- C_DCM0_CLK270_BUF = false
-- C_DCM0_CLKDV_BUF = false
-- C_DCM0_CLK2X_BUF = false
-- C_DCM0_CLK2X180_BUF = false
-- C_DCM0_CLKFX_BUF = false
-- C_DCM0_CLKFX180_BUF = false
-- C_DCM0_EXT_RESET_HIGH = 1
-- C_DCM0_FAMILY = "spartan6"

-- C_DCM0_CLKIN_MODULE = NONE
-- C_DCM0_CLKIN_PORT = NONE
-- C_DCM0_CLKFB_MODULE = NONE
-- C_DCM0_CLKFB_PORT = NONE
-- C_DCM0_RST_MODULE = NONE

-- C_DCM1_DFS_FREQUENCY_MODE = "LOW"
-- C_DCM1_DLL_FREQUENCY_MODE = "LOW"
-- C_DCM1_DUTY_CYCLE_CORRECTION = true
-- C_DCM1_CLKIN_DIVIDE_BY_2 = false
-- C_DCM1_CLK_FEEDBACK = "1X"
-- C_DCM1_CLKOUT_PHASE_SHIFT = "NONE"
-- C_DCM1_DSS_MODE = "NONE"
-- C_DCM1_STARTUP_WAIT = false
-- C_DCM1_PHASE_SHIFT = 0
-- C_DCM1_CLKFX_MULTIPLY = 4
-- C_DCM1_CLKFX_DIVIDE = 1
-- C_DCM1_CLKDV_DIVIDE = 2.0
-- C_DCM1_CLKIN_PERIOD = 41.6666666
-- C_DCM1_DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"
-- C_DCM1_CLKIN_BUF = false
-- C_DCM1_CLKFB_BUF = false
-- C_DCM1_CLK0_BUF = false
-- C_DCM1_CLK90_BUF = false
-- C_DCM1_CLK180_BUF = false
-- C_DCM1_CLK270_BUF = false
-- C_DCM1_CLKDV_BUF = false
-- C_DCM1_CLK2X_BUF = false
-- C_DCM1_CLK2X180_BUF = false
-- C_DCM1_CLKFX_BUF = false
-- C_DCM1_CLKFX180_BUF = false
-- C_DCM1_EXT_RESET_HIGH = 1
-- C_DCM1_FAMILY = "spartan6"

-- C_DCM1_CLKIN_MODULE = NONE
-- C_DCM1_CLKIN_PORT = NONE
-- C_DCM1_CLKFB_MODULE = NONE
-- C_DCM1_CLKFB_PORT = NONE
-- C_DCM1_RST_MODULE = NONE

-- C_DCM2_DFS_FREQUENCY_MODE = "LOW"
-- C_DCM2_DLL_FREQUENCY_MODE = "LOW"
-- C_DCM2_DUTY_CYCLE_CORRECTION = true
-- C_DCM2_CLKIN_DIVIDE_BY_2 = false
-- C_DCM2_CLK_FEEDBACK = "1X"
-- C_DCM2_CLKOUT_PHASE_SHIFT = "NONE"
-- C_DCM2_DSS_MODE = "NONE"
-- C_DCM2_STARTUP_WAIT = false
-- C_DCM2_PHASE_SHIFT = 0
-- C_DCM2_CLKFX_MULTIPLY = 4
-- C_DCM2_CLKFX_DIVIDE = 1
-- C_DCM2_CLKDV_DIVIDE = 2.0
-- C_DCM2_CLKIN_PERIOD = 41.6666666
-- C_DCM2_DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"
-- C_DCM2_CLKIN_BUF = false
-- C_DCM2_CLKFB_BUF = false
-- C_DCM2_CLK0_BUF = false
-- C_DCM2_CLK90_BUF = false
-- C_DCM2_CLK180_BUF = false
-- C_DCM2_CLK270_BUF = false
-- C_DCM2_CLKDV_BUF = false
-- C_DCM2_CLK2X_BUF = false
-- C_DCM2_CLK2X180_BUF = false
-- C_DCM2_CLKFX_BUF = false
-- C_DCM2_CLKFX180_BUF = false
-- C_DCM2_EXT_RESET_HIGH = 1
-- C_DCM2_FAMILY = "spartan6"

-- C_DCM2_CLKIN_MODULE = NONE
-- C_DCM2_CLKIN_PORT = NONE
-- C_DCM2_CLKFB_MODULE = NONE
-- C_DCM2_CLKFB_PORT = NONE
-- C_DCM2_RST_MODULE = NONE

-- C_DCM3_DFS_FREQUENCY_MODE = "LOW"
-- C_DCM3_DLL_FREQUENCY_MODE = "LOW"
-- C_DCM3_DUTY_CYCLE_CORRECTION = true
-- C_DCM3_CLKIN_DIVIDE_BY_2 = false
-- C_DCM3_CLK_FEEDBACK = "1X"
-- C_DCM3_CLKOUT_PHASE_SHIFT = "NONE"
-- C_DCM3_DSS_MODE = "NONE"
-- C_DCM3_STARTUP_WAIT = false
-- C_DCM3_PHASE_SHIFT = 0
-- C_DCM3_CLKFX_MULTIPLY = 4
-- C_DCM3_CLKFX_DIVIDE = 1
-- C_DCM3_CLKDV_DIVIDE = 2.0
-- C_DCM3_CLKIN_PERIOD = 41.6666666
-- C_DCM3_DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS"
-- C_DCM3_CLKIN_BUF = false
-- C_DCM3_CLKFB_BUF = false
-- C_DCM3_CLK0_BUF = false
-- C_DCM3_CLK90_BUF = false
-- C_DCM3_CLK180_BUF = false
-- C_DCM3_CLK270_BUF = false
-- C_DCM3_CLKDV_BUF = false
-- C_DCM3_CLK2X_BUF = false
-- C_DCM3_CLK2X180_BUF = false
-- C_DCM3_CLKFX_BUF = false
-- C_DCM3_CLKFX180_BUF = false
-- C_DCM3_EXT_RESET_HIGH = 1
-- C_DCM3_FAMILY = "spartan6"

-- C_DCM3_CLKIN_MODULE = NONE
-- C_DCM3_CLKIN_PORT = NONE
-- C_DCM3_CLKFB_MODULE = NONE
-- C_DCM3_CLKFB_PORT = NONE
-- C_DCM3_RST_MODULE = NONE


----------------------------------------

-- C_PLL0_BANDWIDTH = "OPTIMIZED"
-- C_PLL0_CLKFBOUT_MULT = 20
-- C_PLL0_CLKFBOUT_PHASE = 0.0
-- C_PLL0_CLKIN1_PERIOD = 20.000000
-- C_PLL0_CLKOUT0_DIVIDE = 10
-- C_PLL0_CLKOUT0_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT0_PHASE = 0.0000
-- C_PLL0_CLKOUT1_DIVIDE = 1
-- C_PLL0_CLKOUT1_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT1_PHASE = 0.0
-- C_PLL0_CLKOUT2_DIVIDE = 1
-- C_PLL0_CLKOUT2_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT2_PHASE = 0.0
-- C_PLL0_CLKOUT3_DIVIDE = 1
-- C_PLL0_CLKOUT3_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT3_PHASE = 0.0
-- C_PLL0_CLKOUT4_DIVIDE = 1
-- C_PLL0_CLKOUT4_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT4_PHASE = 0.0
-- C_PLL0_CLKOUT5_DIVIDE = 1
-- C_PLL0_CLKOUT5_DUTY_CYCLE = 0.5
-- C_PLL0_CLKOUT5_PHASE = 0.0
-- C_PLL0_COMPENSATION = "SYSTEM_SYNCHRONOUS"
-- C_PLL0_DIVCLK_DIVIDE = 1
-- C_PLL0_REF_JITTER = 0.100
-- C_PLL0_RESET_ON_LOSS_OF_LOCK = false
-- C_PLL0_RST_DEASSERT_CLK = "CLKIN1"
-- C_PLL0_CLKOUT0_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKOUT1_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKOUT2_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKOUT3_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKOUT4_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKOUT5_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKFBOUT_DESKEW_ADJUST = "NONE"
-- C_PLL0_CLKIN1_BUF = false
-- C_PLL0_CLKFBOUT_BUF = TRUE
-- C_PLL0_CLKOUT0_BUF = TRUE
-- C_PLL0_CLKOUT1_BUF = false
-- C_PLL0_CLKOUT2_BUF = false
-- C_PLL0_CLKOUT3_BUF = false
-- C_PLL0_CLKOUT4_BUF = false
-- C_PLL0_CLKOUT5_BUF = false
-- C_PLL0_EXT_RESET_HIGH = 0
-- C_PLL0_FAMILY = "spartan6"

-- C_PLL0_CLKIN1_MODULE = CLKGEN
-- C_PLL0_CLKIN1_PORT = CLKIN
-- C_PLL0_CLKFBIN_MODULE = PLL0
-- C_PLL0_CLKFBIN_PORT = CLKFBOUT
-- C_PLL0_RST_MODULE = CLKGEN

-- C_PLL1_BANDWIDTH = "OPTIMIZED"
-- C_PLL1_CLKFBOUT_MULT = 1
-- C_PLL1_CLKFBOUT_PHASE = 0.0
-- C_PLL1_CLKIN1_PERIOD = 0.000
-- C_PLL1_CLKOUT0_DIVIDE = 1
-- C_PLL1_CLKOUT0_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT0_PHASE = 0.0
-- C_PLL1_CLKOUT1_DIVIDE = 1
-- C_PLL1_CLKOUT1_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT1_PHASE = 0.0
-- C_PLL1_CLKOUT2_DIVIDE = 1
-- C_PLL1_CLKOUT2_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT2_PHASE = 0.0
-- C_PLL1_CLKOUT3_DIVIDE = 1
-- C_PLL1_CLKOUT3_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT3_PHASE = 0.0
-- C_PLL1_CLKOUT4_DIVIDE = 1
-- C_PLL1_CLKOUT4_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT4_PHASE = 0.0
-- C_PLL1_CLKOUT5_DIVIDE = 1
-- C_PLL1_CLKOUT5_DUTY_CYCLE = 0.5
-- C_PLL1_CLKOUT5_PHASE = 0.0
-- C_PLL1_COMPENSATION = "SYSTEM_SYNCHRONOUS"
-- C_PLL1_DIVCLK_DIVIDE = 1
-- C_PLL1_REF_JITTER = 0.100
-- C_PLL1_RESET_ON_LOSS_OF_LOCK = false
-- C_PLL1_RST_DEASSERT_CLK = "CLKIN1"
-- C_PLL1_CLKOUT0_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKOUT1_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKOUT2_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKOUT3_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKOUT4_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKOUT5_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKFBOUT_DESKEW_ADJUST = "NONE"
-- C_PLL1_CLKIN1_BUF = false
-- C_PLL1_CLKFBOUT_BUF = false
-- C_PLL1_CLKOUT0_BUF = false
-- C_PLL1_CLKOUT1_BUF = false
-- C_PLL1_CLKOUT2_BUF = false
-- C_PLL1_CLKOUT3_BUF = false
-- C_PLL1_CLKOUT4_BUF = false
-- C_PLL1_CLKOUT5_BUF = false
-- C_PLL1_EXT_RESET_HIGH = 1
-- C_PLL1_FAMILY = "spartan6"

-- C_PLL1_CLKIN1_MODULE = NONE
-- C_PLL1_CLKIN1_PORT = NONE
-- C_PLL1_CLKFBIN_MODULE = NONE
-- C_PLL1_CLKFBIN_PORT = NONE
-- C_PLL1_RST_MODULE = NONE


----------------------------------------

-- C_MMCM0_BANDWIDTH = "OPTIMIZED"
-- C_MMCM0_CLKFBOUT_MULT_F = 1.0
-- C_MMCM0_CLKFBOUT_PHASE = 0.0
-- C_MMCM0_CLKFBOUT_USE_FINE_PS = false
-- C_MMCM0_CLKIN1_PERIOD = 0.000
-- C_MMCM0_CLKOUT0_DIVIDE_F = 1.0
-- C_MMCM0_CLKOUT0_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT0_PHASE = 0.0
-- C_MMCM0_CLKOUT1_DIVIDE = 1
-- C_MMCM0_CLKOUT1_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT1_PHASE = 0.0
-- C_MMCM0_CLKOUT2_DIVIDE = 1
-- C_MMCM0_CLKOUT2_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT2_PHASE = 0.0
-- C_MMCM0_CLKOUT3_DIVIDE = 1
-- C_MMCM0_CLKOUT3_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT3_PHASE = 0.0
-- C_MMCM0_CLKOUT4_DIVIDE = 1
-- C_MMCM0_CLKOUT4_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT4_PHASE = 0.0
-- C_MMCM0_CLKOUT4_CASCADE = false
-- C_MMCM0_CLKOUT5_DIVIDE = 1
-- C_MMCM0_CLKOUT5_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT5_PHASE = 0.0
-- C_MMCM0_CLKOUT6_DIVIDE = 1
-- C_MMCM0_CLKOUT6_DUTY_CYCLE = 0.5
-- C_MMCM0_CLKOUT6_PHASE = 0.0
-- C_MMCM0_CLKOUT0_USE_FINE_PS = false
-- C_MMCM0_CLKOUT1_USE_FINE_PS = false
-- C_MMCM0_CLKOUT2_USE_FINE_PS = false
-- C_MMCM0_CLKOUT3_USE_FINE_PS = false
-- C_MMCM0_CLKOUT4_USE_FINE_PS = false
-- C_MMCM0_CLKOUT5_USE_FINE_PS = false
-- C_MMCM0_CLKOUT6_USE_FINE_PS = false
-- C_MMCM0_COMPENSATION = "ZHOLD"
-- C_MMCM0_DIVCLK_DIVIDE = 1
-- C_MMCM0_REF_JITTER1 = 0.010
-- C_MMCM0_CLKIN1_BUF = false
-- C_MMCM0_CLKFBOUT_BUF = false
-- C_MMCM0_CLKOUT0_BUF = false
-- C_MMCM0_CLKOUT1_BUF = false
-- C_MMCM0_CLKOUT2_BUF = false
-- C_MMCM0_CLKOUT3_BUF = false
-- C_MMCM0_CLKOUT4_BUF = false
-- C_MMCM0_CLKOUT5_BUF = false
-- C_MMCM0_CLKOUT6_BUF = false
-- C_MMCM0_CLOCK_HOLD = false
-- C_MMCM0_STARTUP_WAIT = false
-- C_MMCM0_EXT_RESET_HIGH = 1
-- C_MMCM0_FAMILY = "spartan6"

-- C_MMCM0_CLKIN1_MODULE = NONE
-- C_MMCM0_CLKIN1_PORT = NONE
-- C_MMCM0_CLKFBIN_MODULE = NONE
-- C_MMCM0_CLKFBIN_PORT = NONE
-- C_MMCM0_RST_MODULE = NONE

-- C_MMCM1_BANDWIDTH = "OPTIMIZED"
-- C_MMCM1_CLKFBOUT_MULT_F = 1.0
-- C_MMCM1_CLKFBOUT_PHASE = 0.0
-- C_MMCM1_CLKFBOUT_USE_FINE_PS = false
-- C_MMCM1_CLKIN1_PERIOD = 0.000
-- C_MMCM1_CLKOUT0_DIVIDE_F = 1.0
-- C_MMCM1_CLKOUT0_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT0_PHASE = 0.0
-- C_MMCM1_CLKOUT1_DIVIDE = 1
-- C_MMCM1_CLKOUT1_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT1_PHASE = 0.0
-- C_MMCM1_CLKOUT2_DIVIDE = 1
-- C_MMCM1_CLKOUT2_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT2_PHASE = 0.0
-- C_MMCM1_CLKOUT3_DIVIDE = 1
-- C_MMCM1_CLKOUT3_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT3_PHASE = 0.0
-- C_MMCM1_CLKOUT4_DIVIDE = 1
-- C_MMCM1_CLKOUT4_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT4_PHASE = 0.0
-- C_MMCM1_CLKOUT4_CASCADE = false
-- C_MMCM1_CLKOUT5_DIVIDE = 1
-- C_MMCM1_CLKOUT5_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT5_PHASE = 0.0
-- C_MMCM1_CLKOUT6_DIVIDE = 1
-- C_MMCM1_CLKOUT6_DUTY_CYCLE = 0.5
-- C_MMCM1_CLKOUT6_PHASE = 0.0
-- C_MMCM1_CLKOUT0_USE_FINE_PS = false
-- C_MMCM1_CLKOUT1_USE_FINE_PS = false
-- C_MMCM1_CLKOUT2_USE_FINE_PS = false
-- C_MMCM1_CLKOUT3_USE_FINE_PS = false
-- C_MMCM1_CLKOUT4_USE_FINE_PS = false
-- C_MMCM1_CLKOUT5_USE_FINE_PS = false
-- C_MMCM1_CLKOUT6_USE_FINE_PS = false
-- C_MMCM1_COMPENSATION = "ZHOLD"
-- C_MMCM1_DIVCLK_DIVIDE = 1
-- C_MMCM1_REF_JITTER1 = 0.010
-- C_MMCM1_CLKIN1_BUF = false
-- C_MMCM1_CLKFBOUT_BUF = false
-- C_MMCM1_CLKOUT0_BUF = false
-- C_MMCM1_CLKOUT1_BUF = false
-- C_MMCM1_CLKOUT2_BUF = false
-- C_MMCM1_CLKOUT3_BUF = false
-- C_MMCM1_CLKOUT4_BUF = false
-- C_MMCM1_CLKOUT5_BUF = false
-- C_MMCM1_CLKOUT6_BUF = false
-- C_MMCM1_CLOCK_HOLD = false
-- C_MMCM1_STARTUP_WAIT = false
-- C_MMCM1_EXT_RESET_HIGH = 1
-- C_MMCM1_FAMILY = "spartan6"

-- C_MMCM1_CLKIN1_MODULE = NONE
-- C_MMCM1_CLKIN1_PORT = NONE
-- C_MMCM1_CLKFBIN_MODULE = NONE
-- C_MMCM1_CLKFBIN_PORT = NONE
-- C_MMCM1_RST_MODULE = NONE

-- C_MMCM2_BANDWIDTH = "OPTIMIZED"
-- C_MMCM2_CLKFBOUT_MULT_F = 1.0
-- C_MMCM2_CLKFBOUT_PHASE = 0.0
-- C_MMCM2_CLKFBOUT_USE_FINE_PS = false
-- C_MMCM2_CLKIN1_PERIOD = 0.000
-- C_MMCM2_CLKOUT0_DIVIDE_F = 1.0
-- C_MMCM2_CLKOUT0_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT0_PHASE = 0.0
-- C_MMCM2_CLKOUT1_DIVIDE = 1
-- C_MMCM2_CLKOUT1_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT1_PHASE = 0.0
-- C_MMCM2_CLKOUT2_DIVIDE = 1
-- C_MMCM2_CLKOUT2_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT2_PHASE = 0.0
-- C_MMCM2_CLKOUT3_DIVIDE = 1
-- C_MMCM2_CLKOUT3_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT3_PHASE = 0.0
-- C_MMCM2_CLKOUT4_DIVIDE = 1
-- C_MMCM2_CLKOUT4_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT4_PHASE = 0.0
-- C_MMCM2_CLKOUT4_CASCADE = false
-- C_MMCM2_CLKOUT5_DIVIDE = 1
-- C_MMCM2_CLKOUT5_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT5_PHASE = 0.0
-- C_MMCM2_CLKOUT6_DIVIDE = 1
-- C_MMCM2_CLKOUT6_DUTY_CYCLE = 0.5
-- C_MMCM2_CLKOUT6_PHASE = 0.0
-- C_MMCM2_CLKOUT0_USE_FINE_PS = false
-- C_MMCM2_CLKOUT1_USE_FINE_PS = false
-- C_MMCM2_CLKOUT2_USE_FINE_PS = false
-- C_MMCM2_CLKOUT3_USE_FINE_PS = false
-- C_MMCM2_CLKOUT4_USE_FINE_PS = false
-- C_MMCM2_CLKOUT5_USE_FINE_PS = false
-- C_MMCM2_CLKOUT6_USE_FINE_PS = false
-- C_MMCM2_COMPENSATION = "ZHOLD"
-- C_MMCM2_DIVCLK_DIVIDE = 1
-- C_MMCM2_REF_JITTER1 = 0.010
-- C_MMCM2_CLKIN1_BUF = false
-- C_MMCM2_CLKFBOUT_BUF = false
-- C_MMCM2_CLKOUT0_BUF = false
-- C_MMCM2_CLKOUT1_BUF = false
-- C_MMCM2_CLKOUT2_BUF = false
-- C_MMCM2_CLKOUT3_BUF = false
-- C_MMCM2_CLKOUT4_BUF = false
-- C_MMCM2_CLKOUT5_BUF = false
-- C_MMCM2_CLKOUT6_BUF = false
-- C_MMCM2_CLOCK_HOLD = false
-- C_MMCM2_STARTUP_WAIT = false
-- C_MMCM2_EXT_RESET_HIGH = 1
-- C_MMCM2_FAMILY = "spartan6"

-- C_MMCM2_CLKIN1_MODULE = NONE
-- C_MMCM2_CLKIN1_PORT = NONE
-- C_MMCM2_CLKFBIN_MODULE = NONE
-- C_MMCM2_CLKFBIN_PORT = NONE
-- C_MMCM2_RST_MODULE = NONE

-- C_MMCM3_BANDWIDTH = "OPTIMIZED"
-- C_MMCM3_CLKFBOUT_MULT_F = 1.0
-- C_MMCM3_CLKFBOUT_PHASE = 0.0
-- C_MMCM3_CLKFBOUT_USE_FINE_PS = false
-- C_MMCM3_CLKIN1_PERIOD = 0.000
-- C_MMCM3_CLKOUT0_DIVIDE_F = 1.0
-- C_MMCM3_CLKOUT0_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT0_PHASE = 0.0
-- C_MMCM3_CLKOUT1_DIVIDE = 1
-- C_MMCM3_CLKOUT1_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT1_PHASE = 0.0
-- C_MMCM3_CLKOUT2_DIVIDE = 1
-- C_MMCM3_CLKOUT2_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT2_PHASE = 0.0
-- C_MMCM3_CLKOUT3_DIVIDE = 1
-- C_MMCM3_CLKOUT3_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT3_PHASE = 0.0
-- C_MMCM3_CLKOUT4_DIVIDE = 1
-- C_MMCM3_CLKOUT4_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT4_PHASE = 0.0
-- C_MMCM3_CLKOUT4_CASCADE = false
-- C_MMCM3_CLKOUT5_DIVIDE = 1
-- C_MMCM3_CLKOUT5_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT5_PHASE = 0.0
-- C_MMCM3_CLKOUT6_DIVIDE = 1
-- C_MMCM3_CLKOUT6_DUTY_CYCLE = 0.5
-- C_MMCM3_CLKOUT6_PHASE = 0.0
-- C_MMCM3_CLKOUT0_USE_FINE_PS = false
-- C_MMCM3_CLKOUT1_USE_FINE_PS = false
-- C_MMCM3_CLKOUT2_USE_FINE_PS = false
-- C_MMCM3_CLKOUT3_USE_FINE_PS = false
-- C_MMCM3_CLKOUT4_USE_FINE_PS = false
-- C_MMCM3_CLKOUT5_USE_FINE_PS = false
-- C_MMCM3_CLKOUT6_USE_FINE_PS = false
-- C_MMCM3_COMPENSATION = "ZHOLD"
-- C_MMCM3_DIVCLK_DIVIDE = 1
-- C_MMCM3_REF_JITTER1 = 0.010
-- C_MMCM3_CLKIN1_BUF = false
-- C_MMCM3_CLKFBOUT_BUF = false
-- C_MMCM3_CLKOUT0_BUF = false
-- C_MMCM3_CLKOUT1_BUF = false
-- C_MMCM3_CLKOUT2_BUF = false
-- C_MMCM3_CLKOUT3_BUF = false
-- C_MMCM3_CLKOUT4_BUF = false
-- C_MMCM3_CLKOUT5_BUF = false
-- C_MMCM3_CLKOUT6_BUF = false
-- C_MMCM3_CLOCK_HOLD = false
-- C_MMCM3_STARTUP_WAIT = false
-- C_MMCM3_EXT_RESET_HIGH = 1
-- C_MMCM3_FAMILY = "spartan6"

-- C_MMCM3_CLKIN1_MODULE = NONE
-- C_MMCM3_CLKIN1_PORT = NONE
-- C_MMCM3_CLKFBIN_MODULE = NONE
-- C_MMCM3_CLKFBIN_PORT = NONE
-- C_MMCM3_RST_MODULE = NONE


----------------------------------------

-- C_PLLE0_BANDWIDTH = "OPTIMIZED"
-- C_PLLE0_CLKFBOUT_MULT = 1
-- C_PLLE0_CLKFBOUT_PHASE = 0.0
-- C_PLLE0_CLKIN1_PERIOD = 0.000
-- C_PLLE0_CLKOUT0_DIVIDE = 1
-- C_PLLE0_CLKOUT0_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT0_PHASE = 0.0
-- C_PLLE0_CLKOUT1_DIVIDE = 1
-- C_PLLE0_CLKOUT1_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT1_PHASE = 0.0
-- C_PLLE0_CLKOUT2_DIVIDE = 1
-- C_PLLE0_CLKOUT2_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT2_PHASE = 0.0
-- C_PLLE0_CLKOUT3_DIVIDE = 1
-- C_PLLE0_CLKOUT3_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT3_PHASE = 0.0
-- C_PLLE0_CLKOUT4_DIVIDE = 1
-- C_PLLE0_CLKOUT4_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT4_PHASE = 0.0
-- C_PLLE0_CLKOUT5_DIVIDE = 1
-- C_PLLE0_CLKOUT5_DUTY_CYCLE = 0.5
-- C_PLLE0_CLKOUT5_PHASE = 0.0
-- C_PLLE0_COMPENSATION = "ZHOLD"
-- C_PLLE0_DIVCLK_DIVIDE = 1
-- C_PLLE0_REF_JITTER1 = 0.010
-- C_PLLE0_CLKIN1_BUF = false
-- C_PLLE0_CLKFBOUT_BUF = false
-- C_PLLE0_CLKOUT0_BUF = false
-- C_PLLE0_CLKOUT1_BUF = false
-- C_PLLE0_CLKOUT2_BUF = false
-- C_PLLE0_CLKOUT3_BUF = false
-- C_PLLE0_CLKOUT4_BUF = false
-- C_PLLE0_CLKOUT5_BUF = false
-- C_PLLE0_STARTUP_WAIT = "false"
-- C_PLLE0_EXT_RESET_HIGH = 1
-- C_PLLE0_FAMILY = "virtex7"

-- C_PLLE0_CLKIN1_MODULE = NONE
-- C_PLLE0_CLKIN1_PORT = NONE
-- C_PLLE0_CLKFBIN_MODULE = NONE
-- C_PLLE0_CLKFBIN_PORT = NONE
-- C_PLLE0_RST_MODULE = NONE


----------------------------------------

