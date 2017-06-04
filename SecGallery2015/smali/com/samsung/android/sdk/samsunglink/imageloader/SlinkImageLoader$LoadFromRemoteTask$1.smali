.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v0

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v0

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->mListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask$1;->this$1:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onErrorResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    goto :goto_0
.end method
