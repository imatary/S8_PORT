.class Lcom/android/keyguard/sec/SecAttributionInfoView$7;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$700(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "just_lock_yahoo_livewallpaper_attribution_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V

    goto :goto_0
.end method
