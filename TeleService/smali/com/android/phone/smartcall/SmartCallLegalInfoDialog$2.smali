.class Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;
.super Ljava/lang/Object;
.source "SmartCallLegalInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->showLegalInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v2}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spam_call_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "spamcall_legal_info_agree"

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    iget-object v2, v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v2}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spam_call_auto_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    iget-object v2, v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "spam_calls_dialog_do_not_show"

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_auto_update_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "spam_call_auto_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v2, v0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    iget-object v2, v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v2}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v4, "IUCO"

    const-string/jumbo v5, "Agree"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v2}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
