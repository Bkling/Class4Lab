/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author benja_000
 */
public class CircleArea {
    private double area;
    private static final double PI = 3.14159265359;
    public double findAreaOfCircle(double radius) {
        area = (radius * 2) * PI;
        return area;
    }
    
}
