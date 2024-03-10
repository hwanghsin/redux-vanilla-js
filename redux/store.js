import { formSlice, switchSlice, scriptSlice } from "./slice.js";
import { Switches } from "./reducer.js";

window.originalReduxStore = window.Redux.createStore(Switches);

window.store = window.RTK.configureStore({
  reducer: {
    switchState: Switches,
    formState: formSlice.reducer,
    scriptState: scriptSlice.reducer,
  },
});

// const { updateForm } = formSlice.actions;
window.actions = {
  ...formSlice.actions,
  ...switchSlice.actions,
  ...scriptSlice.actions,
};
