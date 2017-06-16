.class Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;
.super Ljava/lang/Object;
.source "DecodeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->isExited()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->MAX_ORIGINAL_SIZE:I

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->decode(IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;
    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->isExited()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->argb:[I

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->onOriginalDecode([III)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->updatePrivateFolderDetails()V

    goto :goto_0
.end method
