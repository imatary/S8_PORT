.class public abstract enum Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;
.super Ljava/lang/Enum;
.source "SurfaceColorSpec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

.field public static final enum RGB565:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

.field public static final enum RGB8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

.field public static final enum RGBA8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$1;

    const-string/jumbo v1, "RGBA8"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGBA8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$2;

    const-string/jumbo v1, "RGB8"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGB8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$3;

    const-string/jumbo v1, "RGB565"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGB565:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGBA8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGB8:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->RGB565:Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;

    return-object v0
.end method


# virtual methods
.method public abstract getAlphaSize()I
.end method

.method public abstract getBlueSize()I
.end method

.method public abstract getGreenSize()I
.end method

.method public abstract getRedSize()I
.end method
