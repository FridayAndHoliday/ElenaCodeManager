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
var REQUEST_URL = 'https://raw.githubusercontent.com/facebook/react-native/master/docs/MoviesExample.json';
class RNSampleApp extends Component {

  constructor(props) {
    super(props);
    this.state = {movies: null,};
    this.fetchData = this.fetchData.bind(this);
  }
  componentDidMount() {
    console.log('componentDidMount 被调用啦');
    this.fetchData();
  }
  fetchData() {
    fetch(REQUEST_URL)
      .then((response) => response.json())
      .then((responseData) => {
        this.setState({
          movies: responseData.movies,
        });
      })
      .done();
  }
  renderLoadingView() {
    return (
      <View style = {styles.container}>
      <Text>
      正在加载电影数据......
      </Text>
      </View>
    );
  }
  renderMovie(movie) {
    return (
      <View style={styles.container}>
      <Image 
       source = {{uri:movie.posters.thumbnail}}
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

  render() {
    if (!this.state.movies) {
      console.log('没有有数据');
      return this.renderLoadingView();
    }
    console.log('有数据啦');
    var movie = this.state.movies[0];
    return this.renderMovie(movie);
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
