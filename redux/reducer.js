const initialState = {
  switch: false,
  radio: false,
};

export function Switches(state = initialState, action) {
  switch (action.type) {
    case "UPDATE_SWITCH":
      return {
        ...state,
        ...action.payload,
      };
    default:
      return state;
  }
}
