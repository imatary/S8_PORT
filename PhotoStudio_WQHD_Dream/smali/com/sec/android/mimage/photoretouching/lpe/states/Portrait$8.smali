.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->onProgressChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mPortraitEngineManager:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mProgress:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$PortraitEngineManager;->applyPreview(I)V

    :cond_0
    return-void
.end method
