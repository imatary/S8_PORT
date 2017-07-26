.class Lcom/android/phone/callsettings/CallBarring$15;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v4, 0x7f0d026e

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v5, 0x7f0d027d

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1, v3}, Lcom/android/phone/callsettings/CallBarring;->-set15(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->-get2(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v4, v4, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->-get12(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v4}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/callsettings/CallBarring;->-get4()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap10(Lcom/android/phone/callsettings/CallBarring;Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallBarring"

    const-string/jumbo v2, "BADialog.setNegativeButton - IndexOutOfBoundsException in Preference Index"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
