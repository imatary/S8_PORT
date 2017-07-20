.class Lcom/android/phone/MobileNetworkSettings$3;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get1(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$3;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get1(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
