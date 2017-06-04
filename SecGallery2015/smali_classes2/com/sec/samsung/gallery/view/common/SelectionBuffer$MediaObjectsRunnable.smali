.class abstract Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;
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
    name = "MediaObjectsRunnable"
.end annotation


# instance fields
.field public mMediaObjects:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;->mMediaObjects:Ljava/util/Collection;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;->mMediaObjects:Ljava/util/Collection;

    return-void
.end method
