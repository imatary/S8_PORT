.class Lcom/android/phone/MobileNetworkSettings$2;
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

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get0(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange() getMobileDataEnabled() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-wrap0(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-wrap2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get0(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-wrap0(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get4(Lcom/android/phone/MobileNetworkSettings;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get4(Lcom/android/phone/MobileNetworkSettings;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "This user is restricted to configure Data Roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get1(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-wrap3(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get1(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-wrap0(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
