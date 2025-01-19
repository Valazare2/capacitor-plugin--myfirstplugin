package za.co.kmay.capacitor.plugin;

import android.util.Log;

public class MyFirstPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
