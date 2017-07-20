.class Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;
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

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spam_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    iget-object v0, v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IUCO"

    const-string/jumbo v3, "Disagree"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;->this$0:Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->finish()V

    return-void
.end method
