.class Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->onOrientationChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewOutputBuffer()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekbarColor([III)V

    :cond_0
    return-void
.end method
