.class Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;
.super Ljava/lang/Object;
.source "SmartCallPrivacyNoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    iget-object v0, v0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mNM:Lcom/android/phone/SmartCallNotificationMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    iget-object v0, v0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->mNM:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-static {v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->-wrap0(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    const v1, 0x7f0d01f8

    invoke-virtual {v0, v1}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    const v2, 0x7f0d0225

    invoke-virtual {v1, v2}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smart_call_privacy_notice_donotshow"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-static {v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->-get0(Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->setResult(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity$2;->this$0:Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;->finish()V

    return-void
.end method
