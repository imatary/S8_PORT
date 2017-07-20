.class Lcom/android/phone/WfcCallAlertPopupActivity$1;
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

.field final synthetic val$simOperator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcCallAlertPopupActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    iput-object p2, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->val$simOperator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-virtual {v0}, Lcom/android/phone/WfcCallAlertPopupActivity;->finish()V

    const-string/jumbo v0, "302720"

    iget-object v1, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->val$simOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WfcCallAlertPopupActivity"

    const-string/jumbo v1, "Show Rogers URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://www.rogers.com/AndroidWiFi/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/WfcCallAlertPopupActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "302370"

    iget-object v1, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->val$simOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WfcCallAlertPopupActivity"

    const-string/jumbo v1, "Show Fido URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcCallAlertPopupActivity$1;->this$0:Lcom/android/phone/WfcCallAlertPopupActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://www.fido.ca/AndroidWiFi/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/WfcCallAlertPopupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
