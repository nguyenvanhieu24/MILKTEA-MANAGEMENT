/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package views;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import javax.swing.JList;
import javax.swing.ListCellRenderer;
import models.Customer;

public class CustomerRenderJList extends javax.swing.JPanel implements ListCellRenderer<Customer> {

    public CustomerRenderJList() {
        initComponents();
        setPreferredSize(new Dimension(400, 75));
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        lbName = new javax.swing.JLabel();
        lbAddress = new javax.swing.JLabel();
        lbPhoneNumber = new javax.swing.JLabel();

        setBackground(new java.awt.Color(60, 35, 23));
        setLayout(new java.awt.GridBagLayout());

        lbName.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lbName.setForeground(new java.awt.Color(211, 107, 0));
        lbName.setText("Nguyễn Xuân Hữu");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.BASELINE_LEADING;
        gridBagConstraints.weightx = 0.1;
        gridBagConstraints.weighty = 0.1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        add(lbName, gridBagConstraints);

        lbAddress.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        lbAddress.setForeground(new java.awt.Color(158, 118, 118));
        lbAddress.setText("Biên Hòa, Đồng Nai");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.BASELINE_LEADING;
        gridBagConstraints.weightx = 0.1;
        gridBagConstraints.weighty = 0.1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        add(lbAddress, gridBagConstraints);

        lbPhoneNumber.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        lbPhoneNumber.setForeground(new java.awt.Color(158, 118, 118));
        lbPhoneNumber.setText("(0393942398)");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.LINE_END;
        gridBagConstraints.weighty = 0.1;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        add(lbPhoneNumber, gridBagConstraints);
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel lbAddress;
    private javax.swing.JLabel lbName;
    private javax.swing.JLabel lbPhoneNumber;
    // End of variables declaration//GEN-END:variables

    @Override
    public Component getListCellRendererComponent(JList<? extends Customer> list, Customer customer, int index, boolean isSelected, boolean cellHasFocus) {
        lbName.setText(customer.getName());
        lbAddress.setText(customer.getAddress());
        lbPhoneNumber.setText(String.format("(%s)", customer.getPhoneNumber()));
        if (cellHasFocus) {
            setBackground(Color.LIGHT_GRAY);
        } else {
            setBackground(new Color(242, 242, 242));
        }
        return this;
    }
}
