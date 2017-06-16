.class Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;
.super Ljava/lang/Thread;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const-class v1, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->prepareItem(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$102(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/samsung/android/allshare/media/ImageViewer;)Lcom/samsung/android/allshare/media/ImageViewer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$202(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mIsViewerShowRequested:Z
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$302(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$100(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/allshare/media/ImageViewer;->show(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    goto :goto_0
.end method
