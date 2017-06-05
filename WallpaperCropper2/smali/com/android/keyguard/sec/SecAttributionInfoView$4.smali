.class Lcom/android/keyguard/sec/SecAttributionInfoView$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->launchLandingPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$300(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$300(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$300(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v1, v1, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDelayedStartActivityHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$4;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v1, v1, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDelayedStartActivityHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v4
.end method
