export const switchSlice = window.RTK.createSlice({
  name: "switchState",
  initialState: {
    switch: false,
    radio: false,
  },
  reducers: {
    updateSwitches: (state, action) => {
      state.switch = !!action.payload.switch;
      state.radio = !!action.payload.radio;
    },
  },
});

export const formSlice = window.RTK.createSlice({
  name: "formState",
  initialState: {
    usr: "",
    pwd: "",
  },
  reducers: {
    updateForm: (state, action) => {
      state.usr = action.payload.usr || state.usr;
      state.pwd = action.payload.pwd || state.pwd;
    },
  },
});

export const scriptSlice = window.RTK.createSlice({
  name: "scriptState",
  initialState: {
    records: [],
  },
  reducers: {
    updateRecordList: (state, action) => {
      state.records = action.payload;
    },
  },
});
