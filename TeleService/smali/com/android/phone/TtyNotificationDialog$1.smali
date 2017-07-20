.class Lcom/android/phone/TtyNotificationDialog$1;
.super Ljava/lang/Object;
.source "TtyNotificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TtyNotificationDialog;->showTtyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyNotificationDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/TtyNotificationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyNotificationDialog$1;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/TtyNotificationDialog$1;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-static {v1}, Lcom/android/phone/TtyNotificationDialog;->-get1(Lcom/android/phone/TtyNotificationDialog;)Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/phone/TtyNotificationDialog$TtyListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TtyNotificationDialog$1;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-virtual {v1}, Lcom/android/phone/TtyNotificationDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_tty_mode"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/TtyNotificationDialog$1;->this$0:Lcom/android/phone/TtyNotificationDialog;

    iget-object v1, v1, Lcom/android/phone/TtyNotificationDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelVzwTtyNotification()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/TtyNotificationDialog$1;->this$0:Lcom/android/phone/TtyNotificationDialog;

    invoke-virtual {v1}, Lcom/android/phone/TtyNotificationDialog;->finish()V

    :cond_1
    return-void
.end method
