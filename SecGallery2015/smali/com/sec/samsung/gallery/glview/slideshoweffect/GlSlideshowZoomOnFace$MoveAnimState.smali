.class final enum Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;
.super Ljava/lang/Enum;
.source "GlSlideshowZoomOnFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MoveAnimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

.field public static final enum STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

.field public static final enum STATE_TRANSITIONING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    const-string/jumbo v1, "STATE_SHOWING_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    const-string/jumbo v1, "STATE_TRANSITIONING_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_TRANSITIONING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_SHOWING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->STATE_TRANSITIONING_IMAGE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace$MoveAnimState;

    return-object v0
.end method
