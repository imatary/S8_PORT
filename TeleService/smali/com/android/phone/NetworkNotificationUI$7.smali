.class Lcom/android/phone/NetworkNotificationUI$7;
.super Landroid/database/ContentObserver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "support_data_off_notification"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->-get3(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string/jumbo v0, "support_data_selection_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->-get3(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
