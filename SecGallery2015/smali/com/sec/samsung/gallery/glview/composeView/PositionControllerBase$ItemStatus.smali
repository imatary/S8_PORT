.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemStatus"
.end annotation


# instance fields
.field volatile decodeCount:I

.field volatile isActivated:Z

.field volatile isDecoded:Z

.field volatile isDecorVisibile:Z

.field item:Lcom/sec/android/gallery3d/data/MediaItem;

.field itemCount:I

.field position:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->itemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    return-void
.end method
