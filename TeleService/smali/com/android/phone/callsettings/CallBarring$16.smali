.class Lcom/android/phone/callsettings/CallBarring$16;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->-set15(Lcom/android/phone/callsettings/CallBarring;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->-get12(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/callsettings/CallBarring;->-get4()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$16;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap10(Lcom/android/phone/callsettings/CallBarring;Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallBarring"

    const-string/jumbo v2, "setOnCancelListener - IndexOutOfBoundsException in Preference Index"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
