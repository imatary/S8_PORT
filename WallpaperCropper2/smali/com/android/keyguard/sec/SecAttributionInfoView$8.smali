.class Lcom/android/keyguard/sec/SecAttributionInfoView$8;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_wu_wallpaper_info_landing_page_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$8;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_2

    const-string/jumbo v1, "flickr.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method
