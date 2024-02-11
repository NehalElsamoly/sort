
package projectjava;
import java.net.URL;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.ResourceBundle;
import javafx.beans.InvalidationListener;
import javafx.beans.Observable;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javax.swing.JOptionPane;

/**
 * FXML Controller class
 *
 * @author teefa
 */
public class HomeController implements Initializable {

    //start insert operaction
    @FXML
    TextField insert_id, insert_name, insert_amount, insert_price;
    @FXML
    Label label1;
    database d = new database();

    /**
     * *************صفحه التعديلات*************************
     */
    public void insert(ActionEvent e) {

        try {
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("insert into medicine (id,name,amount,price) values(?,?,?,?)");
            p.setInt(1, Integer.parseInt(insert_id.getText()));
            p.setString(2, insert_name.getText());
            p.setInt(3, Integer.parseInt(insert_amount.getText()));
            p.setDouble(4, Double.parseDouble(insert_price.getText()));
            p.execute();//excute order and return pooleen

            // JOptionPane.showMessageDialog(null,"");
            label1.setText("تم اضافه البيانات بنجاح");
            System.out.println("successfull insert");

            //clear textfield
            insert_id.setText("");
            insert_name.setText("");
            insert_amount.setText("");
            insert_price.setText("");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

    }

    //action button delete
    public void deleteAddation() {
        insert_id.setText("");
        insert_name.setText("");
        insert_amount.setText("");
        insert_price.setText("");
        label1.setText("");
    }

    //end ensert
    //start update
    @FXML
    TextField update_id, update_name, update_amount, update_price;
    @FXML
    Label l2;

    public void update(ActionEvent e) {

        try {
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("update medicine set id=?,name=?,amount=?,price=? where id=?");
            p.setInt(1, Integer.parseInt(update_id.getText()));
            p.setString(2, update_name.getText());
            p.setInt(3, Integer.parseInt(update_amount.getText()));
            p.setDouble(4, Double.parseDouble(update_price.getText()));
            p.setInt(5, Integer.parseInt(update_id.getText()));
            p.execute();
            l2.setText("تم تعديل البيانات بنجاح");
            update_id.setText("");
            update_name.setText("");
            update_amount.setText("");
            update_price.setText("");

            System.out.println("successfull update");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

    }

    public void clearupdate() {
        l2.setText("");
        update_id.setText("");
        update_name.setText("");
        update_amount.setText("");
        update_price.setText("");
    }
    //end update

    //start delete
    @FXML
    TextField delete_id;
    @FXML
    Label l3;

    public void delete(ActionEvent e) {

        try {
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement(" delete from medicine where id=?");
            p.setInt(1, Integer.parseInt(delete_id.getText()));
            p.execute();
            l3.setText("تم مسح البيانات بنجاح");
            delete_id.setText("");
            System.out.println("successfull delete");
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());
        }

    }

    public void cleardelete() {
        l3.setText("");
        delete_id.setText("");

    }

    //start show table data
    @FXML
    TableView<TableData> table;
    @FXML
    TableColumn<TableData, Integer> tid;
    @FXML
    TableColumn<TableData, String> tname;
    @FXML
    TableColumn<TableData, Integer> tamount;
    @FXML
    TableColumn<TableData, Double> tprice;

    ObservableList<TableData> T = FXCollections.observableArrayList();

    public void ShowData() {

        try {
            T.clear();
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("select*from medicine");
            ResultSet r = p.executeQuery();
            while (r.next()) {
                T.add(new TableData(
                        r.getInt("id"),
                        r.getString("name"),
                        r.getInt("amount"),
                        r.getDouble("price")));

            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());

        }
    }
//end show table data;

//search table medicine
    @FXML
    TextField search;

    public void SearchData() {
        search.textProperty().addListener(new InvalidationListener() {
            @Override
            public void invalidated(Observable observable) {
                //is textfeild is empty
                if (search.textProperty().get().isEmpty()) {
                    table.setItems(T);
                } //if is not empty
                else {
                    ObservableList<TableData> items = FXCollections.observableArrayList();
                    ObservableList<TableColumn<TableData, ?>> column = table.getColumns();

                    for (int row = 0; row < T.size(); row++) {
                        for (int col = 0; col < column.size(); col++) {
                            TableColumn cellVar = column.get(col);
                            String cellValue = cellVar.getCellData(T.get(row)).toString();
                            if (cellValue.contains(search.getText()) && cellValue.startsWith(search.getText())) {
                                items.add(T.get(row));
                                break;

                            }

                        }

                    }

                    table.setItems(items);

                }

            }

        });

    }

    /**
     * ************************نهايه صفحه التعديلات********************************
     */
    /**
     * ****************الصفحه الرئيسيه*******************************************
     */
    @FXML
    TextField scane;
    @FXML
    TableView<TableData> table1;
    @FXML
    TableColumn<TableData, Integer> t1id;
    @FXML
    TableColumn<TableData, String> t1name;
    @FXML
    TableColumn<TableData, Integer> t1amount;
    @FXML
    TableColumn<TableData, Double> t1price;
    ObservableList<TableData> list = FXCollections.observableArrayList();

    @FXML
    Label Total;
   public double x;

    public void Scane() {

        try {
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("select *from medicine where id=?");
            p.setInt(1, Integer.parseInt(scane.getText()));
            ResultSet r = p.executeQuery();
            r.next();
            TableData t1 = new TableData(r.getInt("id"),
                    r.getString("name"),
                    r.getInt("amount"),
                    r.getDouble("price"));
            list.add(t1);

            //clear the value of textfeild of scane id
            scane.setText("");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        //calulate Total price of bills
        double sum=0;
        for (int i = 0; i < table1.getItems().size(); i++) {
            sum=sum+t1price.getCellObservableValue(i).getValue();
            Total.setText(String.valueOf(sum));
        }
        /**
         * ************************************************************************
         */
         x=sum;
         sum=0;
    }

    /**
     * ************endscane***************
     */
    public void saveData() {
        //clear the value of  total 
        Total.setText("0");

        //add data to database
        try {

            Date da = new Date();
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("insert into bills (date,total) values(?,?)");
            p.setString(1, String.valueOf(da));
            p.setDouble(2, x);
            p.execute();
          
            System.out.println("great");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        //clear all data in table after adding to database
        table1.getItems().clear();
          

    }

    //delete buying operaction 
    public void deleteoperaction() {
        Total.setText("0");
        list.clear();
    }

    /**
     * ******************صفحه عرض الفواتير*************************
     */
    @FXML
    TableView<TableData1> bills;
    @FXML
    TableColumn<TableData1, String> billsid;
    @FXML
    TableColumn<TableData1, String> billsdate;
    @FXML
    TableColumn<TableData1, Double> billstotal;
    ObservableList<TableData1> li = FXCollections.observableArrayList();

    public void showbills() {

        try {
            li.clear();
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("select *from bills");
            ResultSet r = p.executeQuery();
            while (r.next()) {
                TableData1 da = new TableData1(
                        String.valueOf(r.getInt("id")),
                        r.getString("date"),
                        r.getDouble("total")
                );

                li.add(da);
            }
            //clear the value of textfeild of scane id

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    /**
     * *********************search table of bills*********************
     */
    @FXML
    TextField search1;

    public void searchbills() {
        search1.textProperty().addListener(new InvalidationListener() {
            @Override
            public void invalidated(Observable observable) {
                //is textfeild is empty
                if (search1.textProperty().get().isEmpty()) {
                    bills.setItems(li);
                } //if is not empty
                else {

                    ObservableList<TableData1> items1 = FXCollections.observableArrayList();
                    ObservableList<TableColumn<TableData1, ?>> column1 = bills.getColumns();

                    for (int row1 = 0; row1 < li.size(); row1++) {
                        for (int col1 = 0; col1 < column1.size(); col1++) {
                            TableColumn cellVar1 = column1.get(col1);
                            String cellValue1 = cellVar1.getCellData(li.get(row1)).toString();
                            if (cellValue1.contains(search1.getText()) && cellValue1.startsWith(search1.getText())) {
                                items1.add(li.get(row1));
                                break;

                            }

                        }

                    }

                    bills.setItems(items1);

                }

            }

        });

    }

    /**
     * ***********************************************************
     */
    public void DeleteAllData() {
        try {
            li.clear();
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("delete from bills");
            p.execute();

            Totalsum.setText("");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }
    /**
     * *********************************
     */
    @FXML
    TextField delectselect;

    public void DeleteselectData() {
        try {
            showbills();
            Connection c = d.conect();
            PreparedStatement p = c.prepareStatement("delete from bills where id=?");
            p.setString(1, delectselect.getText());
            p.execute();
            delectselect.setText("");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }
    /**
     * ************************************
     */
    @FXML
    Label Totalsum;

    public void calcTotal() {
        double Sum = 0;
        for (int i = 0; i < bills.getItems().size(); i++) {
            Sum += billstotal.getCellObservableValue(i).getValue();
            Totalsum.setText(String.valueOf(Sum));
        }

    }

    /**
     * **************************************نهايه صفحه الفواتير**************************************
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // search
        //show data in table 1
        tid.setCellValueFactory(new PropertyValueFactory<>("Id"));
        tname.setCellValueFactory(new PropertyValueFactory<>("Name"));
        tamount.setCellValueFactory(new PropertyValueFactory<>("Amount"));
        tprice.setCellValueFactory(new PropertyValueFactory<>("Price"));
        table.setItems(T);
        //////Scane
        t1id.setCellValueFactory(new PropertyValueFactory<>("Id"));
        t1name.setCellValueFactory(new PropertyValueFactory<>("Name"));
        t1amount.setCellValueFactory(new PropertyValueFactory<>("Amount"));
        t1price.setCellValueFactory(new PropertyValueFactory<>("Price"));
        table1.setItems(list);
        //table2

        billsid.setCellValueFactory(new PropertyValueFactory<>("operaction"));
        billsdate.setCellValueFactory(new PropertyValueFactory<>("time"));
        billstotal.setCellValueFactory(new PropertyValueFactory<>("Total"));
        bills.setItems(li);

    }
}
