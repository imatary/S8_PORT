.class public final enum Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;
.super Ljava/lang/Enum;
.source "GlSlideshowTransitionShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field public static final enum FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field public static final enum FLOW_DIRECTION_DOWN:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field public static final enum FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field public static final enum FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

.field public static final enum FLOW_DIRECTION_UP:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const-string/jumbo v1, "FADE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_DOWN:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_UP"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_UP:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_DOWN:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_UP:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    return-object v0
.end method
