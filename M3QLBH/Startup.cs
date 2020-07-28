using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(M3QLBH.Startup))]
namespace M3QLBH
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
