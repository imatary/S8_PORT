.class public abstract enum Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
.super Ljava/lang/Enum;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "GLESVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

.field public static final enum OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

.field public static final enum OpenGLES20:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion$1;

    const-string/jumbo v1, "OpenGLES11"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion$2;

    const-string/jumbo v1, "OpenGLES20"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES20:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES20:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->$VALUES:[Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    return-object v0
.end method


# virtual methods
.method public abstract getContextAttributes()[I
.end method
