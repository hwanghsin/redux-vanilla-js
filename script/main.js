window.onload = () => {
  console.log("store", window.store);
  console.log("actions", window.actions);
  const store = window.store;
  const { updateSwitches, updateForm } = window.actions;
  const switchEl = document.getElementById("cb-btn");
  const usrEl = document.getElementById("usr");
  const pwdEl = document.getElementById("pwd");

  // 開關功能掛載 當dispatch呼叫時此函式會被觸發
  const toggleSwitch = () => {
    const switchState = store.getState().switchState;
    document.getElementById("content").innerText = `${switchState.switch}`;
    document
      .getElementById("cb")
      .setAttribute("checked", `${switchState.switch}`);
  };
  toggleSwitch();
  // dispatch後更新
  store.subscribe(toggleSwitch);
  // 擊點事件
  switchEl.addEventListener("click", () => {
    const switchState = store.getState().switchState;
    store.dispatch(
      updateSwitches({
        switch: !switchState.switch,
      })
    );
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
    const formState = store.getState().formState;
    console.log("formState", formState);
  });
};
