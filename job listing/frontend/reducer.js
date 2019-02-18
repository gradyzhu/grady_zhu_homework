const initialState = {
  city: "Please Select", 
  jobs: []
};

export const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_LOCATION":
      return [
        ...state,
        action.city
      ];
    default:
      return state;
  }
};

