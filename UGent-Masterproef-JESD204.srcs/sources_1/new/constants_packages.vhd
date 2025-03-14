library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package constants_package is
    -- Binary constants
    constant b_ADJCNT    : std_logic_vector(3 downto 0) := X"0";    -- Number of adjustment resolution steps (Subclass 2 only)
    constant b_ADJDIR    : std_logic_vector(0 downto 0) := "0";     -- Direction to adjust DAC (Subclass 2 only)
    constant b_BID       : std_logic_vector(3 downto 0) := X"0";    -- Bank ID
    constant b_CF        : std_logic_vector(4 downto 0) := "00000"; -- Control words per frame
    constant b_CS        : std_logic_vector(1 downto 0) := "00";    -- Control bits per sample
    constant b_DID       : std_logic_vector(7 downto 0) := X"0C";   -- Device ID
    constant b_F         : std_logic_vector(7 downto 0) := X"02";   -- Octets per frame (+1)
    constant b_HD        : std_logic_vector(0 downto 0) := "0";     -- High density format
    constant b_JESDV     : std_logic_vector(2 downto 0) := "001";   -- JESD Version (000=JESD204A, 001=JESD204B)
    constant b_K         : std_logic_vector(4 downto 0) := "00101"; -- Frames per multiframe (+1)
    constant b_L         : std_logic_vector(4 downto 0) := "00000"; -- Lanes (+1)
    constant b_LID       : std_logic_vector(4 downto 0) := "00000"; -- Lane ID
    constant b_M         : std_logic_vector(7 downto 0) := X"01";   -- Converters per device (+1)
    constant b_N         : std_logic_vector(4 downto 0) := "01011"; -- Bits per sample (+1) (Converter resolution)
    constant b_Na        : std_logic_vector(4 downto 0) := "01011"; -- Total bits per sample (+1)
    constant b_PHADJ     : std_logic_vector(0 downto 0) := "0";     -- Phase adjustment request to DAC (Subclass 2 only)
    constant b_S         : std_logic_vector(4 downto 0) := "00001"; -- Samples per converter per frame (+1)
    constant b_SCR       : std_logic_vector(0 downto 0) := "0";     -- Scrambling
    constant b_SUBCLASSV : std_logic_vector(2 downto 0) := "001";   -- Subclass version
    
    -- Integer constants
    constant F: integer := to_integer(unsigned(b_F))+1; -- Octets per frame
    constant K: integer := to_integer(unsigned(b_K))+1; -- Frames per multiframe
    constant L: integer := to_integer(unsigned(b_L))+1; -- Lanes
    constant M: integer := to_integer(unsigned(b_M))+1; -- Converters per device
    constant N: integer := to_integer(unsigned(b_N))+1; -- Bits per sample (Converter resolution)
    constant S: integer := to_integer(unsigned(b_S))+1; -- Samples per converter per frame
    
    -- Control character constants
    constant ctrlR: std_logic_vector(7 downto 0) := "00011100"; -- /R/=K28.0: Initial lane alignment sequence multi-frame start
    constant ctrlA: std_logic_vector(7 downto 0) := "01111100"; -- /A/=K28.3: Lane alignment (end of multiframe)
    constant ctrlQ: std_logic_vector(7 downto 0) := "10011100"; -- /Q/=K28.4: Initial lane alignment sequence configuration marker
    constant ctrlK: std_logic_vector(7 downto 0) := "10111100"; -- /K/=K28.5: Code group synchronization
    constant ctrlF: std_logic_vector(7 downto 0) := "11111100"; -- /F/=K28.7: Frame alignement
end package;