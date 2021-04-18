/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package automationcompany;

/**
 *
 * @author Abhinav
 */
public class AutomationCompany {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
          
       SplashScreen obj=new SplashScreen();
       obj.setVisible(true);
       try{
           for(int i=0;i<=100;i++){
           
           Thread.sleep(35);
           obj.lblprogress.setText(Integer.toString(i)+" %");
           obj.progressbar.setValue(i);
           
           if(i==100){
              obj.setVisible(false);
              new Homepage().setVisible(true);
           }
           
           }
       } catch (InterruptedException ex) {
           
        }
        
        
      
    }
    
}
