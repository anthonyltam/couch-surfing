import React from 'react';
import { connect } from 'react-redux';
import { fetchRestaurant } from '../../actions/restaurant_actions';
import RestaurantShowItem from './restaurant_show_item';
// import { getAllRestaurants } from '../../reducers/selectors';

const msp = (state, ownProps) => {
  // console.log("CONTAINER'S PROPS", ownProps);
  console.log(state)
  // debugger;
  return {
    restaurant: state.restaurants[ownProps.match.params.id]
    // restaurant: state.restaurants[1]
  };
};

const mdp = dispatch => {
  return {
    fetchRestaurant: id => dispatch(fetchRestaurant(id))
  }
}



export default connect(msp, mdp)(RestaurantShowItem);