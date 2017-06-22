.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$700(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onLanguageChangeForPen()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onLanguageChangeForEffects()V

    :cond_0
    return-void
.end method
