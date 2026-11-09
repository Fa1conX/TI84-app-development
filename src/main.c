#include <ti/getcsc.h>
#include <ti/screen.h>

int main(void)
{
    os_ClrHome();
    os_PutStrFull("BJT CALCULATOR");
    os_NewLine();
    os_PutStrFull("CEdev native test OK");
    os_NewLine();
    os_PutStrFull("Press any key");

    while (!os_GetCSC())
        ;

    return 0;
}
