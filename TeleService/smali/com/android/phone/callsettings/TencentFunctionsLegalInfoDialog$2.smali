.class Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;
.super Ljava/lang/Object;
.source "TencentFunctionsLegalInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->showLegalInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-get0(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-wrap2(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IUCO"

    const-string/jumbo v3, "Agree"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-get0(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-wrap3(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-wrap2(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-static {v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->-wrap3(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    iget-object v0, v0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;->this$0:Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    iget-object v0, v0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelTencentFunctionsFilterNotification()V

    goto :goto_0
.end method
