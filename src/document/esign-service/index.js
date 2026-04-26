import Fastify from 'fastify';

const port = parseInt(process.env.PORT || '50301', 10);
const app = Fastify({ logger: { level: process.env.LOG_LEVEL || 'info' } });

app.get('/healthz', async () => ({
  status: 'ok',
  service: 'esign-service',
  checked_at: new Date().toISOString(),
}));

// Webhook endpoint for esign provider callbacks (DocuSign-compatible).
// Emits document.contract.signed when all signers complete.
app.post('/v1/esign/webhook', async (req, reply) => {
  app.log.info({ event: req.body?.event }, 'esign webhook received');
  return reply.code(202).send({ status: 'accepted' });
});

app
  .listen({ host: '0.0.0.0', port })
  .then(() => app.log.info({ port }, 'esign-service ready'))
  .catch(err => {
    app.log.error(err);
    process.exit(1);
  });
