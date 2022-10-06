#include <iostream>
#include <fstream>
#include <vector>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

using namespace std;
struct Facet {
    float nx,ny,nz;
	float x1,y1,z1;
	float x2,y2,z2;
	float x3,y3,z3;
	uint16_t attr;
};

void writeSTL(const vector<Facet>& facets) {
    int size = sizeof(facets)/sizeof(facets[0]);
    int fh = creat("output.stl", size);
    int buf[256] = {sizeof(facets[0])};
    for(int i = 0; i < size;i++){
        write(fh, buf, size);
        
    }
    close(fh);
}

void readSTL(const char filename[]) {
	ifstream f(filename);
	char buf[1024];
	f.getline(buf, sizeof(buf));
	vector<Facet> facets;
	char garbage[64];
	Facet fac;
	while (f >> garbage >> garbage >> fac.nx >> fac.ny >> fac.nz) {
		f >> garbage >> garbage >> // skip outer loop
			garbage >> fac.x1 >> fac.y1 >> fac.z1; // skip vertex
		f >> garbage >> fac.x2 >> fac.y2 >> fac.z2; // skip vertex
		f >> garbage >> fac.x3 >> fac.y3 >> fac.z3; // skip vertex
		facets.push_back(fac);
		f >> garbage >> garbage; // skip endloop endfacet
	}
	writeSTL(facets);
}

int main() {
	readSTL("holycube.stl");	
}