# Compiler
FC = frtpx

# Compiler flags
FFLAGS = -X03 -Kfast -Ksimd -Koptlib_string -Nfjprof
PROF_OPT = -U_FIPP_ -D_FAPP_ -U_FINEPA_

# Target executable
TARGET = fmemop

# Source files
SRCS = mod_c_memset.f90 mod_c_memcpy.f90 fmemop.f90 

# Object files
OBJS = $(SRCS:.f90=.o)

# Default target
all: $(TARGET)

# Link the target executable
$(TARGET): $(OBJS)
	$(FC) $(FFLAGS) $(PROF_OPT) -o $@ $^

# Compile the source files
%.o: %.f90
	$(FC) $(FFLAGS) $(PROF_OPT) -c $<

# Clean up
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets
.PHONY: all clean
