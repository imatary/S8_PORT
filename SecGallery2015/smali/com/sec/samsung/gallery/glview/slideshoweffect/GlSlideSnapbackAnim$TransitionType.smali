.class public final enum Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;
.super Ljava/lang/Enum;
.source "GlSlideSnapbackAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

.field public static final enum FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

.field public static final enum FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    const-string/jumbo v1, "FLOW_DIRECTION_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->FLOW_DIRECTION_RIGHT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->$VALUES:[Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim$TransitionType;

    return-object v0
.end method
