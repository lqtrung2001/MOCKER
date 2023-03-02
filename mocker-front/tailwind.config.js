/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,ts}'
  ],
  theme: {
    extend: {
      backgroundColor: {
        'gray': '#F0F2F5'
      },
      height: {
        '300': '300px'
      }
    }
  },
  plugins: [],
  important: true
};
