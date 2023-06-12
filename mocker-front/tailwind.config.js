/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,ts}'
  ],
  important: true,
  plugins: [],
  prefix: 'tw-',
  theme: {
    extend: {
      backgroundColor: {
        'blue': '#4285F4',
        'blue-light': '#c7d6ff',
        'blue-solid': '#172B4D',
        'gray': '#F0F2F5',
        'green': '#00CA4E',
        'green-light': '#7ffcb1',
        'red': '#FF605C',
        'red-light': '#fda6a4',
        'yellow': '#FFBD44',
        'yellow-light': '#ffdb9c'
      },
      height: {
        '150': '600px',
        '160': '640px',
        '200': '800px',
        '210': '840px',
        '300': '1200px',
        '9/10': '90%'
      },
      maxHeight: {
        '150': '600px'
      },
      minHeight: {
        '26': '104px',
        '32': '128px',
        '80': '320px',
        '86': '344px'
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
        '100': '400px',
        '112': '448px',
        '125': '500px',
        '140': '560px',
        '150': '600px',
        '232': '928px',
        '300': '1200px',
        '49/100': '49%',
        '9/10': '90%'
      }
    }
  }
};
