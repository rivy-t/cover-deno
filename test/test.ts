import { assert, assertEquals } from 'https://deno.land/std@0.90.0/testing/asserts.ts';

import * as m from '../src/mod.ts';

Deno.test('m', () => {
	assert(m.f(true));
	assertEquals(m.f(false), false);
});
