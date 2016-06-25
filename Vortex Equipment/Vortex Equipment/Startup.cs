using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Vortex_Equipment.Startup))]
namespace Vortex_Equipment
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
