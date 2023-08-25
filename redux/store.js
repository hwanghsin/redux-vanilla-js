import { formSlice, switchSlice, scriptSlice } from "./slice.js";
import { Switches } from "./reducer.js";

window.originalReduxStore = window.Redux.createStore(Switches);

window.store = window.RTK.configureStore({
  reducer: {
    switchState: switchSlice.reducer,
    formState: formSlice.reducer,
    scriptState: scriptSlice.reducer,
  },
});

window.actions = {
  ...formSlice.actions,
  ...switchSlice.actions,
  ...scriptSlice.actions,
};
