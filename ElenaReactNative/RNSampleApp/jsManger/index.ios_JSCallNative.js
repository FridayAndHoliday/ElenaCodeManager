/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

var nativeSample = require('react-native').NativeModules.JSCallNativeSample;
nativeSample.doSomething('ReactNative-elenaHoliday');
nativeSample.printBabysName();

class RNSampleApp extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          js调用OC的Native的方法!
        </Text>
        <Text style={styles.instructions}>
          1.native的类要实现RCTBridgeModule协议{'\n'}
          2.使用RCT_EXPORT_METHOD()把对应方法进行导出
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('RNSampleApp', () => RNSampleApp);
