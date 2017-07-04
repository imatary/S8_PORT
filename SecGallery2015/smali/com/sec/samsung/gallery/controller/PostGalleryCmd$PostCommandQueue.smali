.class Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;
.super Ljava/lang/Object;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommandQueue"
.end annotation


# instance fields
.field private final mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V

    return-void
.end method


# virtual methods
.method public dequeue()Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    :cond_0
    return-object v0
.end method

.method public enqueue(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIfExist(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$500(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$500(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    const-string/jumbo v1, "Gallery_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PostGalleryCmd removeIfExist mHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    const-string/jumbo v1, "Gallery_Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PostGalleryCmd removeIfExist mQueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
