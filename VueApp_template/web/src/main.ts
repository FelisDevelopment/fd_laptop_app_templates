import { createPinia } from "pinia";
import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";

const isDevEnv = !(window as any).invokeNative;

if (isDevEnv) {
  const app = createApp(App).use(createPinia());
  app.mount("#app");
} else {
  window.addEventListener("message", (event) => {
    if (event.data !== "parentReady") return;

    const app = createApp(App).use(createPinia());
    app.mount("#app");
  });
}
