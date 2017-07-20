.class Lcom/android/phone/EnhancedLteServices$6;
.super Ljava/lang/Object;
.source "EnhancedLteServices.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EnhancedLteServices;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnhancedLteServices;


# direct methods
.method constructor <init>(Lcom/android/phone/EnhancedLteServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-set2(Z)Z

    const-string/jumbo v0, "EnhancedLteServices"

    const-string/jumbo v1, "onConnected mImsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/EnhancedLteServices;->-get3()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-get1(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-get2(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get1(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-set3(Z)Z

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-set2(Z)Z

    const-string/jumbo v0, "EnhancedLteServices"

    const-string/jumbo v1, "onDisconnected mImsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/EnhancedLteServices;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-get1(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v0}, Lcom/android/phone/EnhancedLteServices;->-get2(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices$6;->this$0:Lcom/android/phone/EnhancedLteServices;

    invoke-static {v1}, Lcom/android/phone/EnhancedLteServices;->-get1(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-static {v2}, Lcom/android/phone/EnhancedLteServices;->-set3(Z)Z

    :cond_0
    return-void
.end method
