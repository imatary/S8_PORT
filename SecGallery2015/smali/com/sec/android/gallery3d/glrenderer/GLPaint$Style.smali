.class public final enum Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;
.super Ljava/lang/Enum;
.source "GLPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/GLPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

.field public static final enum FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

.field public static final enum STROKE:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    const-string/jumbo v1, "FILL"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    const-string/jumbo v1, "STROKE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->STROKE:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->STROKE:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->$VALUES:[Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->$VALUES:[Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    return-object v0
.end method
