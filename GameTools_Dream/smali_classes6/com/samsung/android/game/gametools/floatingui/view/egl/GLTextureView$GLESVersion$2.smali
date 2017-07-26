.class final enum Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion$2;
.super Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;-><init>(Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;)V

    return-void
.end method


# virtual methods
.method public getContextAttributes()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method
