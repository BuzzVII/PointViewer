#include "load_points.h"

void load_points(Points *pP, double *pDim){
	point out;
	std::ifstream PointFile ("testpoints.txt");
	std::string value;
	int index=0,xyz=0;
	double xmax=0,ymax=0,zmax=0,xmin=100000000,ymin=10000000,zmin=10000000;

	while (PointFile.good()){
		if (xyz<7) getline(PointFile, value, ' ');
		else getline(PointFile,value);
		switch(xyz){
			case 0: if(atof(value.c_str())==0) break;
				out.x=atof(value.c_str());
				xmax=std::max(out.x,xmax);
				xmin=std::min(out.x,xmin);
				break;
			case 1:out.y=atof(value.c_str());
				ymax=std::max(out.y,ymax);
				ymin=std::min(out.y,ymin);
				break;
			case 2:out.z=atof(value.c_str());
				zmax=std::max(out.z,zmax);
				zmin=std::min(out.z,zmin);
				break;
			case 3:out.I=(atoi(value.c_str()));
				break;
			case 4:out.r=(atoi(value.c_str()));
				break;
			case 5:out.g=(atoi(value.c_str()));
				break;	
			case 6:out.b=(atoi(value.c_str()));
				break;
			case 7:out.G=atof(value.c_str());
				break;
		}
		index++;
		xyz = index % 8;
 		if (xyz==0) {(*pP).push_back(out);}



	}	

	std::cout << "Point load finished" << std::endl;	
	pDim[0]=std::max(xmax-xmin,std::max(ymax-ymin,zmax-zmin));
	std::cout << pDim[0] << std::endl;
	pDim[1]=xmin;
	std::cout << pDim[1] << std::endl;
	std::cout << xmax << std::endl;
	pDim[2]=ymin;
	std::cout << pDim[2] << std::endl;
	std::cout << ymax << std::endl;
	pDim[3]=zmin;
	std::cout << pDim[3] << std::endl;
	std::cout << zmax << std::endl;
}
