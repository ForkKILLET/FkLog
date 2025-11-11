const COLORS = [
  '#2f4554',
  '#61a0a8',
  '#d48265',
  '#c23531',
  '#91c7ae',
  '#749f83',
  '#ca8622',
  '#bda29a',
  '#6e7074',
  '#546570',
  '#c4ccd3',
]

const cliques = [
  [ '冷筱华', '鬼鬼', '阿云', '鼠鼠', '月下桜', '御坂', '同人女' ],
  [ '同人女', '小鱼' ],
  [ '同人女', '小郑' ],
  [ '同人女', '冷筱华', 'choco' ],
  [ '小鱼', '51' ],
  [ 'zijin', '冷筱华', '御坂' ],
  [ 'wsy' ],
  [ '虫' ],
  [ '小红' ],
  [ '冰梦', '冷筱华', '雨舒', '茯苓', '御坂' ],
  [ '冰梦', '逢老', '章鱼', 'Eason' ],
  [ '章鱼', 'imag' ],
  [ '章鱼', '月下桜' ],
  [ '章鱼', '鬼鬼' ],
  [ '章鱼', '阿云' ],
  [ '章鱼', '鼠鼠' ],
  [ '章鱼', '小郑' ],
  [ '雨舒', '茯苓', '冷筱华' ],
  [ '逢老', '鼠鼠', '月下桜' ],
  [ '逢老', '晏', '76' ],
  [ '逢老', '晏', '晏弟' ],
  [ '逢老', '晏', '茯苓' ],
  [ '逢老', '罗洁艾尔', '冷筱华', '阿云', '雨舒' ],
  [ '逢老', 'Bot' ],
  [ '鬼鬼', 'imag', '小郑', '阿云', '月下桜', '章鱼' ],
]

const people = {
  冷筱华: '杭州',
  鬼鬼: '上海',
  阿云: '上海',
  鼠鼠: '上海',
  月下桜: '上海',
  御坂: '上海',
  同人女: '上海',
  小鱼: '上海',
  小郑: '上海',
  choco: '上海',
  51: '长春',
  76: '北京',
  zijin: '北京',
  wsy: '',
  虫: '广州',
  小红: '河南',
  冰梦: '武汉',
  雨舒: '杭州',
  茯苓: '广州',
  逢老: '北京',
  章鱼: '上海',
  Eason: '武汉',
  imag: '上海',
  晏: '西安',
  晏弟: '西安',
  罗洁艾尔: '杭州',
  Bot: '北京'
}

const names = Object.keys(people)

const cities = [ ...new Set(Object.values(people)) ]

const map = Object.fromEntries(names.map(name => [ name, new Set ]))

const makeClique = (names, i) => {
  const color = '#000'
  return names.flatMap(source =>
    names.filter(name => name !== source).map(target => {
      map[source].add(target)
      return {
        source,
        target,
        lineStyle: { color, width: 1.5 }
      }
    })
  )
}

const links = cliques.flatMap(makeClique)

const makeNode = name => {
  const city = people[name]
  const color = COLORS[cities.indexOf(city)]
  return {
    name,
    label: {
      show: true,
      fontSize: 16,
      color,
    },
    symbolSize: map[name].size * 5,
    itemStyle: {
      color,
    },
    category: people[name],
  }
}


const graph = {
  links,
  nodes: names.map(makeNode),
}

option = {
  title: {
    top: 'bottom',
    left: 'right'
  },
  tooltip: {},
  series: [
    {
      type: 'graph',
      layout: 'circular',
      categories: cities,
      circular: {
        rotateLabel: true
      },
      data: graph.nodes,
      links: graph.links,
      roam: true,
      label: {
        formatter: '{b}'
      },
      lineStyle: {
        curveness: 0.05
      }
    }
  ]
}

myChart.setOption(option)

