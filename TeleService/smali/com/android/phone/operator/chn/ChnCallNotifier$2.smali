.class Lcom/android/phone/operator/chn/ChnCallNotifier$2;
.super Ljava/lang/Object;
.source "ChnCallNotifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/ChnCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get5(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get5(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-set2(Lcom/android/phone/operator/chn/ChnCallNotifier;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0, v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-set0(Lcom/android/phone/operator/chn/ChnCallNotifier;Z)Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0, v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-set1(Lcom/android/phone/operator/chn/ChnCallNotifier;I)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get1(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get0(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get3(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get0(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-static {v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->-get3(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
