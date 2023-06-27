package views.admin;

public class HomeView extends javax.swing.JPanel {

    private boolean isShowLed = false;

    public static void setTimeout(Runnable runnable, int delay) {
        new Thread(() -> {
            try {
                Thread.sleep(delay);
                runnable.run();
            } catch (Exception e) {
                System.err.println(e);
            }
        }).start();
    }

    public HomeView() {
        initComponents();

    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(60, 35, 23));
        setMaximumSize(new java.awt.Dimension(1008, 680));
        setMinimumSize(new java.awt.Dimension(1008, 680));
        addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                formMousePressed(evt);
            }
        });
        setLayout(null);

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 0, 255));
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Background-tra-sua-1.jpg"))); // NOI18N
        jLabel1.setToolTipText("");
        jLabel1.setMaximumSize(new java.awt.Dimension(10080000, 68000000));
        add(jLabel1);
        jLabel1.setBounds(-140, -140, 1280, 853);
    }// </editor-fold>//GEN-END:initComponents

    private void formMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMousePressed
        isShowLed = !isShowLed;
        makeLed();
    }//GEN-LAST:event_formMousePressed

    private void makeLed() {
        if (!isShowLed) {
            return;
        }
        setTimeout(this::makeLed, 200);
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
}
