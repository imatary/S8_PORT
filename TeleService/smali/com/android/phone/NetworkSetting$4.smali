.class Lcom/android/phone/NetworkSetting$4;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v1, "connection created, binding local service."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-set8(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    const-string/jumbo v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-wrap0(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v1, "connection disconnected, cleaning local binding."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->-set8(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    return-void
.end method
