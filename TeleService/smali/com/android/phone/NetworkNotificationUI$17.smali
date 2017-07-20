.class Lcom/android/phone/NetworkNotificationUI$17;
.super Ljava/lang/Thread;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI;->notifyUserIndication(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$17;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$17;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->-get7(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$17;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->-get7(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
