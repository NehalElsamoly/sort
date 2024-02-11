/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXML2.java to edit this template
 */
package projectjava;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

/**
 *
 * @author Mostafa
 */
public class FXMLDocumentController implements Initializable {

    //class database connection
    database d = new database();

    /**
     * ******************************
     */
    @FXML
    TextField username, password;

    public void login(ActionEvent e) throws IOException, Exception {

        try {
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("select*from login");
            ResultSet r = p.executeQuery();
            while (r.next()) {

                if (username.getText().equals(r.getString("username")) && password.getText().equals(r.getString("password"))) {

                    ///
                    System.out.println("ok");
                    //

                    //open home page   
                    Stage stage = new Stage();
                    Parent root = FXMLLoader.load(getClass().getResource("home.fxml"));
                    Scene scene = new Scene(root);
                    stage.setResizable(true);
                    stage.setTitle("نظام ادارة الصيدلية");
                    stage.setScene(scene);
                    stage.show();

                    //
                }

            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

    }

    public void clear(ActionEvent e) {
        username.setText("");
        password.setText("");

    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }

}
