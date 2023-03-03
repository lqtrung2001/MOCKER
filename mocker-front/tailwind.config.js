/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,ts}'
  ],
  important: true,
  plugins: [],
  theme: {
    extend: {
      backgroundColor: {
        'blue': '#4285F4',
        'blue-solid': '#172B4D',
        'gray': '#F0F2F5',
        'green': '#00CA4E',
        'red': '#FF605C',
        'yellow': '#FFBD44'
      },
      height: {
        '300': '1200px'
      },
      minWidth: {
        '300': '1200px'
      },
      textColor: {
        'blue': '#4285F4',
        'gray': '#6B7280',
        'green': '#00CA4E',
        'primary-solid': '#333',
        'red': '#FF605C',
        'yellow': '#FFBD44'
      },
      width: {
        '150': '600px',
        '49/100': '49%',
        '9/10': '90%'
      }
    }
  }
};
