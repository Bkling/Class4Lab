/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author benja_000
 */
public class ThirdSide {

    private double thirdSide;

    public double findThirdSideOfTriangle(double side1, double side2) {
        thirdSide = java.lang.Math.sqrt(side1*side1 + side2*side2);
        return thirdSide;
    }
}
