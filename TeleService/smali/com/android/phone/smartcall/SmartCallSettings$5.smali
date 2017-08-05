.class Lcom/android/phone/smartcall/SmartCallSettings$5;
.super Ljava/lang/Object;
.source "SmartCallSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SmartCallSettings;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SmartCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SmartCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallSettings$5;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings$5;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-static {v2}, Lcom/android/phone/smartcall/SmartCallSettings;->-get0(Lcom/android/phone/smartcall/SmartCallSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "SmartCallSettings"

    const-string/jumbo v3, "onClick mShowPrivacyNotice"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings$5;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/smartcall/SmartCallSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "smart_call_menu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "disable_bottom_button"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallSettings$5;->this$0:Lcom/android/phone/smartcall/SmartCallSettings;

    invoke-virtual {v2, v0}, Lcom/android/phone/smartcall/SmartCallSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
