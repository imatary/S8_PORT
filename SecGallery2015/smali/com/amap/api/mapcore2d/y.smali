.class public Lcom/amap/api/mapcore2d/y;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/y$a;
    }
.end annotation


# static fields
.field public static a:F

.field public static b:F

.field public static c:I

.field public static d:I

.field public static final e:Lcom/amap/api/mapcore2d/y$a;

.field public static final f:[Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:I

.field public static k:I

.field static l:I

.field static m:I

.field static n:I

.field static o:Z

.field static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lcom/amap/api/mapcore2d/y;->b:F

    const/16 v0, 0x14

    sput v0, Lcom/amap/api/mapcore2d/y;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/amap/api/mapcore2d/y;->d:I

    sget-object v0, Lcom/amap/api/mapcore2d/y$a;->a:Lcom/amap/api/mapcore2d/y$a;

    sput-object v0, Lcom/amap/api/mapcore2d/y;->e:Lcom/amap/api/mapcore2d/y$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.amap.api.mapcore2d"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.amap.api.maps2d"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/mapcore2d/y;->f:[Ljava/lang/String;

    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore2d/y;->i:I

    const/16 v0, 0x15

    sput v0, Lcom/amap/api/mapcore2d/y;->j:I

    sput v2, Lcom/amap/api/mapcore2d/y;->l:I

    sput v2, Lcom/amap/api/mapcore2d/y;->m:I

    sput v2, Lcom/amap/api/mapcore2d/y;->n:I

    sput-boolean v3, Lcom/amap/api/mapcore2d/y;->o:Z

    sput-boolean v3, Lcom/amap/api/mapcore2d/y;->p:Z

    return-void
.end method

.method public static a(Z)Lcom/amap/api/mapcore2d/dh;
    .locals 6

    const-string/jumbo v2, "getSDKInfo"

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/dh$a;

    const-string/jumbo v3, "2dmap"

    const-string/jumbo v4, "2.5.0"

    const-string/jumbo v5, "AMAP SDK Android 2DMap 2.5.0"

    invoke-direct {v1, v3, v4, v5}, Lcom/amap/api/mapcore2d/dh$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amap/api/mapcore2d/y;->f:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore2d/dh$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/dh$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/dh$a;->a(Z)Lcom/amap/api/mapcore2d/dh$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dh$a;->a()Lcom/amap/api/mapcore2d/dh;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ConfigableConst"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
