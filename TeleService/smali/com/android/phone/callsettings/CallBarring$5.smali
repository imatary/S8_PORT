.class Lcom/android/phone/callsettings/CallBarring$5;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get11(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "CallBarring"

    const-string/jumbo v1, "Skip the password check."

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->-wrap11(Lcom/android/phone/callsettings/CallBarring;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get0(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v2, 0x7f0d062d

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->-wrap5(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->-set15(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get12(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$5;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
