module subfolder {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.media;
    opens subfolder to javafx.fxml;
    exports subfolder;
}