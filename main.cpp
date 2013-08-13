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
		glVertex3f( ( (*pPset)[count].x - pDims[1] )/ pDims[0] * 2.f -1.f , ((*pPset)[count].z - pDims[3]) / pDims[0] * 2.f - 1.f, ( (*pPset)[count].y - pDims[2]) / pDims[0] *2.f - 1.f );
	}

	glEnd();

}

void drawaxes();

void drawaxes(){
	glBegin(GL_LINES);
	glColor3ub(255,0,0);
	glVertex3f(0.f,0.f,0.f);
	glVertex3f(0.f,0.f,0.5f);
	glEnd();

	glBegin(GL_LINES);
	glColor3ub(0,255,0);
	glVertex3f(0.f,0.f,0.f);
	glVertex3f(0.f,0.5f,0.f);
	glEnd();

	glBegin(GL_LINES);
	glColor3ub(0,0,255);
	glVertex3f(0.f,0.f,0.f);
	glVertex3f(0.5f,0.f,0.f);
	glEnd();
	}

int main( int argc, char** argv ){
	int input;
	float sign=1.0f;
	float xaxis[3]={1.f, 0.f, 0.f}, yaxis[3]={0.f, 1.f, 0.f}, zaxis[3]={0.f, 0.f, 1.f};
	float cos1=cos( 1.f/180 * 3.141592 ), sin1=sin( 1.f/180 * 3.141592);
   	double dims[5];
	bool down=false;
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
	glOrtho(-1,1,-1,1,-10,10);
	
	while( glfwGetKey(  GLFW_KEY_ESC ) != GLFW_PRESS && glfwGetWindowParam(GLFW_OPENED) ){
		glClearColor( 0.160f, 0.0f, 0.120f, 0.0f);
		glClear( GL_COLOR_BUFFER_BIT );
		resetPoints(&P, dims);
		drawaxes();
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
		if(  glfwGetKey( GLFW_KEY_SPACE ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ){
				glRotatef(1.f, zaxis[0], zaxis[1], zaxis[2]);
			}
			else {
				glRotatef(-1.f, zaxis[0], zaxis[1], zaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_UP ) == GLFW_PRESS ){ 
			if( glfwGetKey(  GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(0.f, 0.1f, 0.f);
			else {
				glRotatef(-1.f, xaxis[0], xaxis[1], xaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_DOWN ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(0.f, -0.1f, 0.f);
			else {
				glRotatef(1.f, xaxis[0], xaxis[1], xaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_LEFT ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(0.1f, 0.f, 0.f);
			else {
				glRotatef(-1.f, yaxis[0], yaxis[1], yaxis[2]);
			}
		}
		else if(  glfwGetKey( GLFW_KEY_RIGHT ) == GLFW_PRESS ){ 
			if( glfwGetKey(   GLFW_KEY_RCTRL ) == GLFW_PRESS ) glTranslatef(-0.1f, 0.f, 0.f);
			else {
				glRotatef(1.f, yaxis[0], yaxis[1], yaxis[2]);
			}
		}
		else if(  glfwGetMouseButton(   GLFW_MOUSE_BUTTON_1 ) == 1 ){ 
			glScalef( pow(1.1f,1) , pow(1.1f,1) , pow(1.1f,1) );
	
		}
		else if(  glfwGetMouseButton(   GLFW_MOUSE_BUTTON_2 ) == 1 ){ 
			glScalef( pow(1.1f,-1) , pow(1.1f,-1) , pow(1.1f,-1) );
		}
	
		else if( glfwGetKey( 'R' ) == GLFW_PRESS ){
			glLoadIdentity();//reset view
		}

		else if( glfwGetKey( 'C' ) == GLFW_PRESS & !down ){
			dims[4] = float(int( dims[4] + 1 ) % 3);
			down=true;
		}		
		else if( glfwGetKey( 'C' ) == GLFW_RELEASE ){
			down=false;
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
