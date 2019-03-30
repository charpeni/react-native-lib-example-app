
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.HashMap;
import java.util.Map;

public class RNLibModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNLibModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public Map<String, Object> getConstants() {
    final Map<String, Object> constants = new HashMap<>();
    constants.put("textFromLib", "This text comes from the lib.");
    return constants;
  }

  @Override
  public String getName() {
    return "RNLib";
  }
}