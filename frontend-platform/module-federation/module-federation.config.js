// Module Federation across EstateIQ frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "estateiq_shell",
      remotes: {
        admin: "admin@https://admin.estateiq.internal/remoteEntry.js",
        partner: "partner@https://partner.estateiq.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
