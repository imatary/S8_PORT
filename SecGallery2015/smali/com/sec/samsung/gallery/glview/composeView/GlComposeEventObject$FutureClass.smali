.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureClass"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field decodeCount:I

.field futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

.field futureMediaitem:Lcom/sec/android/gallery3d/data/MediaItem;

.field index:I

.field itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;-><init>()V

    return-void
.end method
