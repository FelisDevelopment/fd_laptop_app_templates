import React from "react";
import ReactDOM from "react-dom/client";
import { MantineProvider } from "@mantine/core";
import Welcome from "./components/Welcome";
import { isEnvBrowser } from "./utils/misc";

const root = ReactDOM.createRoot(document.getElementById("root")!);
const renderApp = () => {
    root.render(
        <React.StrictMode>
            <MantineProvider theme={{ colorScheme: "dark" }}>
                <Welcome />
            </MantineProvider>
        </React.StrictMode>
    );
};

if (isEnvBrowser()) {
    renderApp();
} else {
    window.addEventListener("message", (event) => {
        if (event.data !== "parentReady") return;

        renderApp();
    });
}
