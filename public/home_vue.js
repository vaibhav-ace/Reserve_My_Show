const NAME=[
  { name:'Avengers: Age of Ultron' },
  { name:'Spiderman: Into the Spiderverse'},
  { name:'Uncharted' },
  { name:'Mulan' },
  { name: 'Pirates of the Carribean: The Curse of the Black Pearl' },
  { name: 'The Karate Kid' },
  { name: 'Your Name' },
  { name: 'Dragon Ball Super: Broly' },
  { name: 'Doctor Strange: Multiverse of Madness' }
];

var vueinst = new Vue({
  el: '#app',
  data: {
    counter: 1,
    name: NAME[0]
  }
})