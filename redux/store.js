import { formSlice, switchSlice } from "./slice.js";

window.store = window.RTK.configureStore({
  reducer: {
    switchState: switchSlice.reducer,
    formState: formSlice.reducer,
  },
});

window.actions = {
  ...formSlice.actions,
  ...switchSlice.actions,
};
