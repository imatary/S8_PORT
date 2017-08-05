.class Lcom/android/phone/callsettings/VideoCallBarring$4;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get8(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "## VideoCallBarring ##"

    const-string/jumbo v1, "Skip the password check."

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap11(Lcom/android/phone/callsettings/VideoCallBarring;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get1(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const v2, 0x7f0d062d

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap5(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0, v4}, Lcom/android/phone/callsettings/VideoCallBarring;->-set6(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get9(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$4;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
