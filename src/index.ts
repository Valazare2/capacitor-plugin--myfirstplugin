import { registerPlugin } from '@capacitor/core';

import type { MyFirstPluginPlugin } from './definitions';

const MyFirstPlugin = registerPlugin<MyFirstPluginPlugin>('MyFirstPlugin', {
  web: () => import('./web').then((m) => new m.MyFirstPluginWeb()),
});

export * from './definitions';
export { MyFirstPlugin };
