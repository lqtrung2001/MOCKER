/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,ts}'
  ],
  theme: {
    extend: {
      borderRadius: {
        'md': '10px'
      },
      backgroundColor: {
        'gray': '#F0F2F5'
      }
    }
  },
  plugins: []
};
