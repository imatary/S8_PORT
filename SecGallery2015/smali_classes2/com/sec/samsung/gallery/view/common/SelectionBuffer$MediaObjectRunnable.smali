.class abstract Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;
.super Ljava/lang/Object;
.source "SelectionBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/SelectionBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MediaObjectRunnable"
.end annotation


# instance fields
.field public mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    return-void
.end method
