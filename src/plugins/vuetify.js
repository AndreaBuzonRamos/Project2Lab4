/**
 * plugins/vuetify.js
 *
 * Framework documentation: https://vuetifyjs.com`
 */

// Styles
import '@mdi/font/css/materialdesignicons.css'
import 'vuetify/styles'


// Composables
import { createVuetify } from 'vuetify'

const customDarkTheme = {
  dark: true,
  colors: {
    background: "#15202b",
    surface: "#15202b",
    primary: "#3f51b5",
    secondary: "#03dac6",
    error: "#ff5722",
  },
};

const customLightTheme = {
  dark: false,
  colors: {
    background: "#eee",
    surface: "#15202b",
    primary: "#3f51b5",
    secondary: "#00ccff",
    error: "#ffcc00",
  },
};


// https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
export default createVuetify({
  defaults: {
    VBtn: {
      elevation: 1,
      style: 'text-transform: uppercase;',
    },
  },
  theme: {
    defaultTheme: "light",
    themes: {
      customDarkTheme,
      customLightTheme,
    },
  },
})
