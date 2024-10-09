<script setup lang="ts">
import { onMounted, ref } from "vue";

const {
  getSettings,
  getNetworkSettings,
  getDevices,
  appReady,
  sendNotification,
  onSettingsChange,
  onNetworkChange,
} = window as any;

const settings = ref<any>();
const network = ref<any>();
const devices = ref<any>();

const fetchSettings = async () => {
  const data = await getSettings();

  settings.value = data;
};

const fetchNetworkSettings = async () => {
  const data = await getNetworkSettings();

  network.value = data;
};

const fetchDevices = async () => {
  const data = await getDevices();

  devices.value = data;
};

onSettingsChange((data: any) => {
  console.log("Settings Changed");
  console.log(JSON.stringify(data));
});

onNetworkChange((data: any) => {
  console.log("Network Changed");
  console.log(JSON.stringify(data));
});

const notification = () => {
  sendNotification("Test", "This is a test");
};

onMounted(async () => {
  appReady();
});
</script>

<template>
  <div
    class="flex flex-col items-center flex-1 overflow-auto bg-[#25262b] dark:bg-gray-800 gap-10 max-w-full z-50"
  >
    <h1 class="text-white">Laptop Test App</h1>
    <div class="flex flex-col gap-5">
      <button
        class="rounded bg-white text-black p-3"
        @click.prevent="notification()"
      >
        Send test notification
      </button>

      <button
        class="rounded bg-white text-black p-3"
        @click.prevent="fetchSettings()"
      >
        Fetch settings
      </button>
      <div class="text-gray-200 truncate max-w-md">
        Settings: {{ settings ?? "N/A" }}
      </div>

      <button
        class="rounded bg-white text-black p-3"
        @click.prevent="fetchNetworkSettings()"
      >
        Fetch network settings
      </button>
      <div class="text-gray-200 truncate max-w-md">
        Network: {{ network ?? "N/A" }}
      </div>

      <button
        class="rounded bg-white text-black p-3"
        @click.prevent="fetchDevices()"
      >
        Fetch devices
      </button>
      <div class="text-gray-200 truncate max-w-md">
        Devices: {{ devices ?? "N/A" }}
      </div>
    </div>
  </div>
</template>
