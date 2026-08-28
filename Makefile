# hol2mg translator build (ocamlfind, no dune available on this machine)
OCAMLFIND = ocamlfind
PKGS = yojson,str,unix
LIBSRC = lib/hol.ml lib/mg.ml lib/rewrite.ml lib/emptycase.ml lib/registry.ml lib/elab.ml lib/literal.ml lib/manifest.ml
BINSRC = bin/main.ml
OUT = bin/hol2mg
FLAGS = -g -w +a-4-9-26-27-32..42-44-45-48-70 -I lib -I bin

all: $(OUT)

$(OUT): $(LIBSRC) $(BINSRC)
	$(OCAMLFIND) ocamlopt $(FLAGS) -package $(PKGS) -linkpkg -o $(OUT) $(LIBSRC) $(BINSRC)

clean:
	rm -f lib/*.cm* lib/*.o bin/*.cm* bin/*.o $(OUT)

.PHONY: all clean
