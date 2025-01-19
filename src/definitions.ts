export interface MyFirstPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
