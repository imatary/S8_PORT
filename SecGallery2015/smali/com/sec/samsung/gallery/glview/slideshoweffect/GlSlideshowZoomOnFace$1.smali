.class synthetic Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;
.super Ljava/lang/Object;
.source "GlSlideshowZoomOnFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowZoomOnFace$FaceAnimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowZoomOnFace$FaceAnimState:[I

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowZoomOnFace$FaceAnimState:[I

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->MOVING_TO_FACE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$1;->$SwitchMap$com$sec$samsung$gallery$glview$slideshoweffect$GlSlideshowZoomOnFace$FaceAnimState:[I

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->ZOOMING_ON_FACE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$FaceAnimState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
