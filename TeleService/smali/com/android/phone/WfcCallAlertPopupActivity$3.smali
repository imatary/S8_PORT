.class Lcom/android/phone/WfcCallAlertPopupActivity$3;
.super Ljava/lang/Object;
.source "WfcCallAlertPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WfcCallAlertPopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcCallAlertPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcCallAlertPopupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcCallAlertPopupActivity$3;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string/jumbo v4, "WfcCallAlertPopupActivity"

    const-string/jumbo v5, "onClick: positive button"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, ".callsettings.WifiCallHelpActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isFromNoti"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/WfcCallAlertPopupActivity$3;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-virtual {v4}, Lcom/android/phone/WfcCallAlertPopupActivity;->finish()V

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/WfcCallAlertPopupActivity$3;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-virtual {v4, v2}, Lcom/android/phone/WfcCallAlertPopupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "WfcCallAlertPopupActivity"

    const-string/jumbo v5, "ActivityNotFoundException : "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
