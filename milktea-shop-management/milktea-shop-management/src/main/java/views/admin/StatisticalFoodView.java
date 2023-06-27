
package views.admin;

import com.toedter.calendar.JDateChooser;
import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import models.Statistical;
import utils.ErrorPopup;

public class StatisticalFoodView extends javax.swing.JPanel {

    String[] header = {"Tên Món", "Số lượng đã bán"};
    DefaultTableModel tableModel = new DefaultTableModel(header, 0);
    ArrayList<Statistical.ProductIncome> tableData = new ArrayList<>();

    public StatisticalFoodView() {
        initComponents();
        tblData.getTableHeader().setFont(new Font("Segoe UI", Font.BOLD, 12));
        tblData.getTableHeader().setOpaque(false);
        tblData.getTableHeader().setBackground(new Color(51, 175, 255));
        tblData.getTableHeader().setForeground(new Color(255, 255, 255));
        ((DefaultTableCellRenderer) tblData.getTableHeader().getDefaultRenderer())
                .setHorizontalAlignment(JLabel.LEFT);
        tblData.setModel(tableModel);

    }

    public DefaultTableModel getTableModel() {
        return tableModel;
    }

    public ArrayList<Statistical.ProductIncome> getTableData() {
        return tableData;
    }

    public JComboBox<String> getCbxCategory() {
        return cbxCategory;
    }

    public void showError(String message) {
        ErrorPopup.show(new Exception(message));
    }

    public JButton getBtnEnter() {
        return btnEnter;
    }

    public JDateChooser getEndDate() {
        return endDate;
    }

    public JDateChooser getStartDate() {
        return startDate;
    }

    public JTable getTable() {
        return tblData;
    }

    public void setTableModel(DefaultTableModel tableModel) {
        this.tableModel = tableModel;

    }

    public void setTableData(ArrayList<Statistical.ProductIncome> tableData) {
        this.tableData = tableData;
        renderData();
    }

    public void renderData() {
        tableModel.setNumRows(0);
        try {
            for (Statistical.ProductIncome item : tableData) {
                tableModel.addRow(new Object[]{
                    item.id,
                    item.quantity
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        tblData = new javax.swing.JTable();
        startDate = new com.toedter.calendar.JDateChooser();
        endDate = new com.toedter.calendar.JDateChooser();
        btnEnter = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        cbxCategory = new javax.swing.JComboBox<>();

        setBackground(new java.awt.Color(118, 215, 196));
        setPreferredSize(new java.awt.Dimension(1008, 680));

        tblData.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null},
                {null, null},
                {null, null},
                {null, null}
            },
            new String [] {
                "Tên món", "Đã bán"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Integer.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        tblData.setRowHeight(25);
        jScrollPane1.setViewportView(tblData);

        startDate.setDateFormatString("dd/MM/yyyy");
        startDate.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        endDate.setDateFormatString("dd/MM/yyyy");
        endDate.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        btnEnter.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnEnter.setText("Truy xuất");
        btnEnter.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEnterActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel1.setText("Ngày bắt đầu");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel2.setText("Ngày kết thúc");

        cbxCategory.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(22, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 813, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel2)
                    .addComponent(startDate, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(endDate, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cbxCategory, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel1)
                    .addComponent(btnEnter, javax.swing.GroupLayout.DEFAULT_SIZE, 148, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(85, 85, 85)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(startDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(35, 35, 35)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(endDate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(38, 38, 38)
                .addComponent(cbxCategory, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(37, 37, 37)
                .addComponent(btnEnter)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(58, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 601, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnEnterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEnterActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnEnterActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnEnter;
    private javax.swing.JComboBox<String> cbxCategory;
    private com.toedter.calendar.JDateChooser endDate;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private com.toedter.calendar.JDateChooser startDate;
    private javax.swing.JTable tblData;
    // End of variables declaration//GEN-END:variables
}
