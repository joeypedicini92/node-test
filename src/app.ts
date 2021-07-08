import Koa from 'koa';
export const app = new Koa();

app.use(async function(ctx) {
  ctx.body = 'Hello World';
});

app.listen(3000);
console.log('server running on port 3000');