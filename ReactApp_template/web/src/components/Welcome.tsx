import React from "react";
import { DEFAULT_THEME, Divider, Paper, Text, Button } from "@mantine/core";

const Welcome: React.FC = () => {
    const theme = DEFAULT_THEME;

    const { appReady, sendNotification } = window as any;

    if (appReady) {
        appReady();
    }

    return (
        <div
            style={{
                width: "100%",
                height: "100%",
                position: "fixed",
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                backgroundColor: "transparent", // Set to transparent to remove background
            }}
        >
            <Paper
                w={"100%"}
                h={"100%"}
                withBorder
                style={{
                    padding: 20,
                    textAlign: "center",
                    backgroundColor: theme.colors.dark[7],
                }}
            >
                <Text size="xl" fw={700} style={{ marginBottom: 15 }}>
                    Basic React/Mantine App Template
                </Text>
                <Divider />
                <Button
                    mt={20}
                    variant="light"
                    color="teal"
                    onClick={() =>
                        sendNotification(
                            "Test Notification",
                            "This is a test notification"
                        )
                    }
                >
                    Test Notification
                </Button>
            </Paper>
        </div>
    );
};

export default Welcome;
