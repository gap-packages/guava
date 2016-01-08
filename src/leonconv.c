#include <stdlib.h>
#include <stdio.h>
 
FILE *in, *out; 
 
void AutoMorphToGuave(char *inputfile, char *outputfile); 
void ConstWeightToGuave(char *inputfile, char *outputfile); 
void EquivalentToGuave(char *inputfile, char *outputfile); 
void WeightToGuave(char *inputfile, char *outputfile); 
 
int main(int argc, char *argv[])
{ 
char *sw, *inputfile, *outputfile; 
 
	if (!(argc-1 == 3)) { 
		 fprintf(stderr, "Error, usage: leonconv <switch> <inputfile> <outputfile>\n"); 
		 exit(1); 
	} 
	sw = argv[1]; 
	inputfile = argv[2]; 
	outputfile = argv[3]; 
	switch ((int) sw[1]) { 
		case 97 : AutoMorphToGuave(inputfile, outputfile); break; 
		case 99 : ConstWeightToGuave(inputfile, outputfile); break; 
		case 101: EquivalentToGuave(inputfile, outputfile); break; 
		case 119: WeightToGuave(inputfile, outputfile); break; 
		default : fprintf(stderr, "Possible switches: -a, -c, -e, -w\n"); 
				  exit(1); 
	} 
	return 0; 
} 
 
int ReadUntil(FILE *fl, char Sc, int Cnt) { 
char bit; 
int res, i; 
	res = fscanf(fl, "%c", &bit); 
	i = 0; 
	if (bit == Sc) i++; 
	while ((i < Cnt) && (res != EOF)) { 
		res = fscanf(fl, "%c", &bit); 
		if (bit == Sc) i++; 
	} 
	return res; 
} 
 
int OpenFiles(char *inputfile, char *outputfile) { 
	if ((in = fopen(inputfile, "r")) == NULL) 
	{ 
		fprintf(stderr, "Cannot open input file.\n"); 
		return 1; 
	} 
	if ((out = fopen(outputfile, "w")) == NULL) 
	{ 
		fprintf(stderr, "Cannot open output file.\n"); 
		return 1; 
	} 
	return 0; 
} 
 
void AutoMorphToGuave(char *inputfile, char *outputfile) { 
char bit; 
int res; 
 
	OpenFiles(inputfile, outputfile); 
	res = ReadUntil(in, '\n', 6); 
	fprintf(out, "GUAVA_TEMP_VAR := Group(\n"); 
	res = fscanf(in, "%c", &bit);
	if (bit == 'F') 
		fprintf(out, "()");
	else	
		while ((bit != ']') && (res != EOF)) { 
			fprintf(out, "%c", bit); 
			res = fscanf(in, "%c", &bit); 
		} 
	fprintf(out, ");\n"); 
	fclose(in);
	in = fopen(inputfile, "r"); 
	res = ReadUntil(in, '\n', 3); 
	res = ReadUntil(in, ':', 1); 
	fprintf(out, "SetSize(GUAVA_TEMP_VAR, "); 
	res = fscanf(in, "%c", &bit); 
	while ((bit != ';') && (res != EOF)) { 
		fprintf(out, "%c", bit); 
		res = fscanf(in, "%c", &bit); 
	} 
	fprintf(out, ");\n"); 
	fclose(in); fclose(out);
} 
 
void ConstWeightToGuave(char *inputfile, char *outputfile) { 
char bit; 
int i, j, M, n, res, el; 
 
	OpenFiles(inputfile, outputfile); 
	res = ReadUntil(in, '\n', 2); 
	res = ReadUntil(in, ',', 1); 
	res = fscanf(in, "%i,%i", &M, &n); 
	res = ReadUntil(in, '\n', 1); 
	fprintf(out, "GUAVA_TEMP_VAR := [\n"); 
	for (i = 0; i < M; i++) { 
		fprintf(out, "["); 
		for (j = 0; j < n; j++) { 
			res = fscanf(in, "%i%c", &el, &bit); 
			if (j == 0) fprintf(out, "%i", el); 
			else fprintf(out, ",%i", el); 
		}
		if (i < M-1) fprintf(out, "],\n");
		else fprintf(out, "]");
	} 
	fprintf(out, "];\n"); 
	fclose(in); fclose(out);
} 
 
void EquivalentToGuave(char *inputfile, char *outputfile) { 
	char bit, is_valid; 
	int res, res2, noteq;
	long start_offset, end_offset;

	/*
	 * The variables is_valid, start_offset and end_offset are
	 * used to fix the bug reported by Klaus Lux.
	 */
	is_valid = 1;
	if (!(in = fopen(inputfile, "rb"))) is_valid = 0;
	else {
		start_offset = ftell(in); 
		fseek(in, 0L, SEEK_END);
		end_offset   = ftell(in);
		rewind(in);
		res2 = fread(&bit, 1, 1, in);
		if (bit == 0x0A && (end_offset - start_offset <= 1))
			is_valid = 0;
		fclose(in);
	}
	
 	noteq = ((in = fopen(inputfile, "r")) == NULL);
	if ((out = fopen(outputfile, "w")) == NULL) 
	{ 
		fprintf(stderr, "Cannot open output file.\n"); 
		exit(1); 
	} 
	fprintf(out, "GUAVA_TEMP_VAR := "); 
	
	if (noteq || !is_valid) {
		fprintf(out, "false;");
	}
	else {
		res = ReadUntil(in, '=', 1); 
		res = fscanf(in, "%c", &bit); 
		while ((bit != 'F') && (res != EOF)) { 
			fprintf(out, "%c", bit); 
			res = fscanf(in, "%c", &bit); 
		}
	} 
	fprintf(out, "\n"); 
	if (!noteq) fclose(in);
	fclose(out);
} 
 
void WeightToGuave(char *inputfile, char *outputfile) { 
int i, Wt, Fr, CurWt, res; 
 
	OpenFiles(inputfile,outputfile); 
	res = ReadUntil(in, '\n', 6); 
	fprintf(out, "GUAVA_TEMP_VAR := ["); 
	CurWt = 0; 
	res = fscanf(in, "%i ", &Wt); 
	while (res != EOF) { 
	    if (CurWt > 0) fprintf(out, ", "); 
	    res = fscanf(in, "%i", &Fr); 
	    for (i = CurWt; i < Wt; i++) fprintf(out, "0, "); 
	    fprintf(out, "%i", Fr); 
	    CurWt = Wt+1; 
		res = ReadUntil(in, '\n', 1); 
	    res = fscanf(in, "%i", &Wt); 
	} 
	fprintf(out, "];\n"); 
	fclose(in); fclose(out); 
} 
 
