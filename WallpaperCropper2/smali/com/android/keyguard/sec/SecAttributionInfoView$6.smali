.class Lcom/android/keyguard/sec/SecAttributionInfoView$6;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$500(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$500(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$700(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$602(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$600(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$600(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$6;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$600(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/keyguard/sec/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V

    goto :goto_0
.end method
