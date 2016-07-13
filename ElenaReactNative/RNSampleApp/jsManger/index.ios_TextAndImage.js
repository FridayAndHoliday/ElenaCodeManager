/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Image,
  Text,
  View
} from 'react-native';
var MOCKED_MOVIES_DATA = [{title:'标题',year:'2016',posters:{thumbnail:'https://facebook.github.io/react/img/logo_og.png'}},];
class RNSampleApp extends Component {
  render() {
    var movie = MOCKED_MOVIES_DATA[0];
    return (
      <View style={styles.container}>
      <Image 
       source = {{uri:movie.posters.thumbnail}}

       //显示本地图片 文件路径是index.ios_TableDisplayRemoteData.js组件文件夹的上一个文件夹下的
       //ios/resources/images/下的headPortraits.jpg  展示本地图片的时候可以不指定图片控件的大小，会使用图片真实大小
       // source = {require('./../ios/resources/images/headPortraits.jpg')}
       //放到imageset里面的图片这么取是不是有些费劲啊~~虽然也能取到
       // source = {require('./../ios/RNSampleApp/Images.xcassets/Image.imageset/location_icon.png')}
       style = {styles.thumbnail}
       />
       <View style = {styles.rightContainer}>
        <Text style = {styles.title}>
          {movie.title}
        </Text>
        <Text style = {styles.year}>
          {movie.year}
        </Text>
       </View>
      
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  thumbnail: {
    width: 53,
    height: 81,
    backgroundColor: '#FFB6C1',
  },
  rightContainer: {
    flex: 1,
  },
  title: {
    fontSize: 20,
    marginBottom: 8,
    textAlign: 'center',
  },
  year: {
    textAlign: 'center',
  },
  
});

AppRegistry.registerComponent('RNSampleApp', () => RNSampleApp);
