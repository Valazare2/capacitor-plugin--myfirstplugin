import { WebPlugin } from '@capacitor/core';

import type { MyFirstPluginPlugin } from './definitions';

export class MyFirstPluginWeb extends WebPlugin implements MyFirstPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
