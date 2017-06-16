.class Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

.field final synthetic val$autoEnhance:Z

.field final synthetic val$brightness:I

.field final synthetic val$contrast:I

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$exposure:I

.field final synthetic val$hue:I

.field final synthetic val$saturation:I

.field final synthetic val$wbMode:I

.field final synthetic val$wbTemperature:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;IIIIIIIZLcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$brightness:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$exposure:I

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$contrast:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$saturation:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$hue:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$wbMode:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$wbTemperature:I

    iput-boolean p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$autoEnhance:Z

    iput-object p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, v2

    new-array v3, v0, [I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalMaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getByteArray(I)[B

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    const/4 v1, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$brightness:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$exposure:I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$contrast:I

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$saturation:I

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$hue:I

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$wbMode:I

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$wbTemperature:I

    iget-boolean v14, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$autoEnhance:Z

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->applyTone(Z[I[III[BIIIIIIIZ)V
    invoke-static/range {v0 .. v14}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;Z[I[III[BIIIIIIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    goto :goto_0
.end method
