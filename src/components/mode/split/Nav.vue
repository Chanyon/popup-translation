<script setup lang="ts">
import Button from "../../common/Button.vue";
import {
  IconBrandGoogle,
  IconBrandBing,
  IconTransformFilled,
} from "@tabler/icons-vue";
import { Platform } from "../../../types/type";

const props = defineProps<{
  plat: {
    current: Platform;
  };
}>();

const platClick = (plat: Platform) => {
  props.plat.current = plat;
};
</script>

<template>
  <div class="btns">
    <Button
      class="btn"
      :class="{ active: plat.current === Platform.ChatGTP }"
      @click="platClick(Platform.ChatGTP)"
    >
      <IconTransformFilled :size="16" color="skyblue"></IconTransformFilled>
      ChatGPT
    </Button>
    <Button
      class="btn"
      :class="{ active: plat.current === Platform.YouDao }"
      @click="platClick(Platform.YouDao)"
    >
      <IconTransformFilled :size="16" color="skyblue"></IconTransformFilled>
      有道词典
    </Button>
    <Button
      class="btn"
      :class="{ active: plat.current === Platform.Google }"
      @click="platClick(Platform.Google)"
    >
      <IconBrandGoogle :size="16" color="skyblue"></IconBrandGoogle>
      Google
    </Button>
    <Button
      class="btn"
      :class="{ active: plat.current === Platform.Deepl }"
      @click="platClick(Platform.Deepl)"
    >
      <IconTransformFilled :size="16" color="skyblue"></IconTransformFilled>
      Deepl
    </Button>
    <Button
      class="btn"
      :class="{ active: plat.current === Platform.Bing }"
      @click="platClick(Platform.Bing)"
      disabled
    >
      <IconBrandBing :size="16" color="skyblue"></IconBrandBing>
      Bing
    </Button>
  </div>
</template>

<style scoped>
.btns {
  display: flex;
}

.btns .btn {
  margin: 5px;
  flex: 1;
}

.active {
  background-color: rgb(64, 100, 92);
}
</style>
