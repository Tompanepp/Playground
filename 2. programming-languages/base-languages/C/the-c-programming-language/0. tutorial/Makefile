OBJECTS = program.o

%.o: %.c 
    gcc -c $< -o $@

program: $(OBJECTS)
    gcc $(OBJECTS) -o $@

clean:
    -rm -f $(OBJECTS)
    -rm -f program