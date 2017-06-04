.class final enum Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;
.super Ljava/lang/Enum;
.source "GlSlideshowPerspective.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

.field public static final enum STATE_TRANSITION:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

.field public static final enum STATE_ZOOM:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    const-string/jumbo v1, "STATE_TRANSITION"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_TRANSITION:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    const-string/jumbo v1, "STATE_ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_ZOOM:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_TRANSITION:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->STATE_ZOOM:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective$AnimState;

    return-object v0
.end method
