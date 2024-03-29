window.onload = async () => {
  const store = window.store;
  const originalRedux = window.originalReduxStore;
  const { updateSwitches, updateForm, updateRecordList } = window.actions;
  const switchEl = document.getElementById("cb-btn");
  const usrEl = document.getElementById("usr");
  const pwdEl = document.getElementById("pwd");

  const loadRecords = async () => {
    const res = await fetch(`https://bible.fhl.net/json/abv.php`);
    const json = await res.json();
    return json.record;
  };

  // 開關功能掛載 當dispatch呼叫時此函式會被觸發
  const toggleSwitch = () => {
    const switchState = originalRedux.getState();
    document.getElementById("content").innerText = `${switchState.switch}`;
    // const switchState = store.getState().switchState;
    // document.getElementById("content").innerText = `${switchState.switch}`;
    document
      .getElementById("cb")
      .setAttribute("checked", `${switchState.switch}`);
  };
  toggleSwitch();
  // dispatch後更新
  // store.subscribe(toggleSwitch);
  originalRedux.subscribe(toggleSwitch);
  // 擊點事件
  switchEl.addEventListener("click", () => {
    const switches = originalRedux.getState();
    console.log("switches", switches);
    // 傳統切換state的方法
    originalRedux.dispatch({
      type: "UPDATE_SWITCH",
      payload: { switch: !switches.switch },
    });
    // const switchState = store.getState().switchState;
    // 新版redux直接dispatch定義好的action，不需依賴code去執行。撰寫上比較直覺
    // store.dispatch(
    //   updateSwitches({
    //     switch: !switchState.switch,
    //   })
    // );
  });

  const updateUsername = () => {
    const usr = store.getState().formState.usr;
    document.getElementById("usr").value = usr;
  };
  updateUsername();
  store.subscribe(updateUsername);

  usrEl.addEventListener("change", (ev) => {
    const usr = ev.target.value;
    store.dispatch(updateForm({ usr }));
  });

  const updatePassword = () => {
    const pwd = store.getState().formState.pwd;
    document.getElementById("pwd").value = pwd;
  };
  updatePassword();
  store.subscribe(updatePassword);

  pwdEl.addEventListener("change", (ev) => {
    const pwd = ev.target.value;
    store.dispatch(updateForm({ pwd }));
  });

  document.getElementById("form").addEventListener("submit", (ev) => {
    ev.preventDefault();
    const { usr, pwd } = store.getState().formState;
    document.getElementById(
      "form-result"
    ).innerText = `帳號：${usr}, 密碼：${pwd}`;
  });

  document.getElementById("load-scripts").addEventListener("click", () => {
    const scripts = store.getState().scriptState.records;
    if (!scripts.length) return;
    const str = scripts
      .map(({ book, cname }) => {
        return `
        <tr>
          <td>${book}</td>
          <td>${cname}</td>
        </tr>
      `;
      })
      .join("");
    document.getElementById("table-body").innerHTML = str;
  });

  try {
    const records = await loadRecords();
    store.dispatch(updateRecordList(records));
  } catch (error) {
    alert(`${error.message}`);
  }
};
