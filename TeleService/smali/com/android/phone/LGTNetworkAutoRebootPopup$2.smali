.class Lcom/android/phone/LGTNetworkAutoRebootPopup$2;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v1, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v2, " show LGTNetworkAutoRebootPopup on CLick reboot "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v2, "already POWER_OFF state setAuto now! "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->-wrap0(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->-set0(Lcom/android/phone/LGTNetworkAutoRebootPopup;Z)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setRadioPower(Z)V

    const-string/jumbo v1, "LGTNetworkAutoRebootPopup "

    const-string/jumbo v2, "request set RadioPower off ---> "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
