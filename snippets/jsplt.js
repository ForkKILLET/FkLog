const patch = () => {
const range = n => Array.from({ length: n }).map((_, i) => i);

const mkplt = (f, g) => (x, { length = 40, color = 'unset' } = {}) => {
	if (typeof x === 'number') return f(x);
	const s = String(x);
	const plot = range(21).map(i => i === 9 ? [ '+', ...'-'.repeat(length) ] : [ '|', ...' '.repeat(length) ]);
	range(length).forEach(i => {
		plot[Math.round(g(i))][i] = `%c${ s[i % s.length] }%c`;
	});
	console.log('\n' + plot.map(row => row.join('')).join('\n') + '\n', ...`color: ${color};||`.repeat(length).split('|'));
};

const _sin = Math.sin;
const _cos = Math.cos;

Math.sin = mkplt(_sin, i => 10 * (- _sin(i * 0.2) + 1));
Math.cos = mkplt(_cos, i => 10 * (- _cos(i * 0.2) + 1));
}

const script = document.createElement('script')
script.text = `(${ patch.toString() })()`
document.documentElement.appendChild(script)

