#include <math.h>
#include <time.h>
#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <algorithm>

#include "load_points.h"

// open gl includes
#include <GL/glfw.h>


//PointViewer version 0.2

void resetPoints(Points *pPset, double *pDims);

void resetPoints(Points *pPset, double *pDims){

	glBegin(GL_POINTS);
	for(int count=0;count < (*pPset).size();count++){
		if(pDims[4]==1) glColor3ub((*pPset)[count].r, (*pPset)[count].g, (*pPset)[count].b);
		else if(pDims[4]==0) glColor3ub((*pPset)[count].I, (*pPset)[count].I, (*pPset)[count].I);
		else glColor3ub(100,100,100);
		glVertex3f( ( (*pPset)[count].x - pDims[1] ) / pDims[0]  * 2.f -1.f , ((*pPset)[count].z - pDims[3]) / pDims[0] * 2.f - 1.f, ( (*pPset)[count].y - pDims[2]) / pDims[0] * 2.f - 1.f );
	}

	glEnd();

}

void drawaxes(float *pxax, float *pyax, float *pzax);

void drawaxes(float *pxax, float *pyax, float *pzax){
	glBegin(GL_LINES);
	glColor3ub(255,0,0);
	glVertex3f(0.f * pzax[0], 0.f * pzax[1],0.f * pzax[2]);
	glVertex3f(0.1f * pzax[0], 0.1f * pzax[1], 0.1f * pzax[2]);
	glEnd();

	glBegin(GL_LINES);
	glColor3ub(0,255,0);
	glVertex3f(0.f * pyax[0], 0.f * pyax[1], 0.f * pyax[2]);
	glVertex3f(0.1f * pyax[0], 0.1f * pyax[1], 0.1f * pyax[2]);
	glEnd();

	glBegin(GL_LINES);
	glColor3ub(0,0,255);
	glVertex3f(0.0f * pxax[0], 0.0f * pxax[1], 0.0f * pxax[2]);
	glVertex3f(0.1f * pxax[0], 0.1f * pxax[1], 0.1f * pxax[2]);
	glEnd();
	}

int main( int argc, char** argv ){
	int input,speed=1;
	float sign=1.0f;
	float xaxis[3]={1.f, 0.f, 0.f}, yaxis[3]={0.f, 1.f, 0.f}, zaxis[3]={0.f, 0.f, 1.f};
	float cos1=cos( 1.f/180 * 3.141592 ), sin1=sin( 1.f/180 * 3.141592);
   	double dims[5];
	bool cdown=false;
	GLfloat currentModelMatrix[16];
	std::string userCommand;
	
	dims[4]=1;
	Points P;
	
	load_points(&P , dims);

	input = time( NULL );
	std::cout << "Initializing Graphics Window" << std::endl;	
	

	if ( !glfwInit() ){
		std::cerr <<  "Failed to start GLFW" << std::endl;
	return -1;
	}
	
	if (!glfwOpenWindow(800, 800, 0, 0, 0, 0, 0, 0, GLFW_WINDOW)){
		glfwTerminate();
	return -1;
	}
	
	glfwSetWindowTitle("PointViewer");

	glfwEnable(GLFW_STICKY_KEYS);

	glEnable( GL_POINT_SMOOTH );
//	glEnable( GL_LIGHTING );
//	glEnable( GL_LIGHT0 );
//	glEnable( GL_LIGHT1 );

	glPointSize( 1.0f );
	glOrtho(-100,100,-100,100,-1000,1000);
	
	while( glfwGetKey(  GLFW_KEY_ESC ) != GLFW_PRESS && glfwGetWindowParam(GLFW_OPENED) ){
		//glClearColor( 0.160f, 0.0f, 0.120f, 0.0f);
		glClearColor( 0.1f, 0.1f, 0.1f, 0.1f);
		glClear( GL_COLOR_BUFFER_BIT );
		resetPoints(&P, dims);
		drawaxes(xaxis, yaxis, zaxis);
		glDrawArrays(GL_POINTS, 0, 3);
		glDrawArrays(GL_LINES,0,3);
		glfwSwapBuffers();
		glfwPollEvents();

//manipulate transforms to current view axes
/*glGetFloatv(GL_MODELVIEW_MATRIX, currentModelViewMatrix);   
glRotatef(xRotation, currentModelViewMatrix[1], currentModelViewMatrix[5], currentModelViewMatrix[9]);
glGetFloatv(GL_MODELVIEW_MATRIX, currentModelViewMatrix);
glRotatef(yRotation, currentModelViewMatrix[0], currentModelViewMatrix[4], currentModelViewMatrix[8]);*/

	
/* Need to calculate the current axis based on the previous key presses then update each rotate etc to be around the appropriate axis*/
		if(  glfwGetKey( GLFW_KEY_UP ) == GLFW_PRESS ){ 
			if( glfwGetKey(  GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef( 0.1 * yaxis[0], 0.1 * yaxis[1], 0.1 * yaxis[2]);
			else {
				glRotatef(-1.f * float( speed ), xaxis[0], xaxis[1], xaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_DOWN ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(-0.1 * yaxis[0],-0.1 * yaxis[1],-0.1 * yaxis[2]);
			else {
				glRotatef(1.f * float( speed ), xaxis[0], xaxis[1], xaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_LEFT ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(-0.1 * xaxis[0],-0.1 * xaxis[1],-0.1 * xaxis[2]);
			else {
				glRotatef(-1.f * float( speed ), yaxis[0], yaxis[1], yaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_RIGHT ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(0.1 * xaxis[0],0.1 * xaxis[1],0.1 * xaxis[2]);
			else {
				glRotatef(1.f * float( speed ), yaxis[0], yaxis[1], yaxis[2]);
			}
		}	
		else if(  glfwGetKey( 'A' ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(0.1 * zaxis[0],0.1 * zaxis[1],0.1 * zaxis[2]);
			else {
				glRotatef(1.f * float( speed ), zaxis[0], zaxis[1], zaxis[2]);
			}
		}
		else if(  glfwGetKey( 'Z' ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(-0.1 * zaxis[0],-0.1 * zaxis[1],-0.1 * zaxis[2]);
			else {
				glRotatef(-1.f * float( speed ), zaxis[0], zaxis[1], zaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_SPACE ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glScalef( pow(1.1f * float( speed ),1) , pow(1.1f * float( speed ),1) , pow(1.1f * float( speed ),1) );
			else {
				glScalef( pow(0.9f / float( speed ),1) , pow(0.9f / float( speed ),1) , pow(0.9f / float( speed ),1) );
			}
		}
	
		else if( glfwGetKey( 'R' ) == GLFW_PRESS ){
			glLoadIdentity();//reset view

			glGetFloatv(GL_MODELVIEW_MATRIX, currentModelMatrix);//reset vectors
			xaxis[0]=currentModelMatrix[0];
			xaxis[1]=currentModelMatrix[4];
			xaxis[2]=currentModelMatrix[8];
			yaxis[0]=currentModelMatrix[1];
			yaxis[1]=currentModelMatrix[5];
			yaxis[2]=currentModelMatrix[9];
			zaxis[0]=currentModelMatrix[2];
			zaxis[1]=currentModelMatrix[6];
			zaxis[2]=currentModelMatrix[10];
		}

		else if( glfwGetKey( 'G' ) == GLFW_PRESS ){
			glGetFloatv(GL_MODELVIEW_MATRIX, currentModelMatrix);//reset vectors
			xaxis[0]=currentModelMatrix[0];
			xaxis[1]=currentModelMatrix[4];
			xaxis[2]=currentModelMatrix[8];
			yaxis[0]=currentModelMatrix[1];
			yaxis[1]=currentModelMatrix[5];
			yaxis[2]=currentModelMatrix[9];
			zaxis[0]=currentModelMatrix[2];
			zaxis[1]=currentModelMatrix[6];
			zaxis[2]=currentModelMatrix[10];
		}

		else if( glfwGetKey( 'C' ) == GLFW_PRESS & !cdown ){
			dims[4] = float(int( dims[4] + 1 ) % 3);
			cdown=true;
		}		
		else if( glfwGetKey( 'C' ) == GLFW_RELEASE ){
			cdown=false;
		}	
		else if( glfwGetKey( '1' ) == GLFW_RELEASE ){
		speed=1;
		}
		else if( glfwGetKey( '2' ) == GLFW_RELEASE ){
		speed=10;
		}
		else if( glfwGetKey( '3' ) == GLFW_RELEASE ){
		speed=100;
		}
		else if( glfwGetKey( '/' ) == GLFW_RELEASE ){
		//bring up user terminal
		}  
	}
	
	std::cout << "terminating GLFW" << std::endl;
	glfwTerminate();
	std::cout << "program complete" << std::endl;
return 0;
}
