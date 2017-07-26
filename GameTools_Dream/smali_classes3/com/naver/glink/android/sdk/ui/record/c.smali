.class public Lcom/naver/glink/android/sdk/ui/record/c;
.super Ljava/lang/Object;
.source "RecordInfo.java"


# static fields
.field public static final a:I = 0x168

.field public static final b:I = 0x1e0

.field public static final c:I = 0x2d0

.field public static final d:I = 0xdbba0

.field public static final e:I = 0x2191c0

.field public static final f:I = 0x3d0900

.field public static g:I

.field public static h:I

.field public static i:I


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e0

    sput v0, Lcom/naver/glink/android/sdk/ui/record/c;->g:I

    const v0, 0x2191c0

    sput v0, Lcom/naver/glink/android/sdk/ui/record/c;->h:I

    const/16 v0, 0x1e

    sput v0, Lcom/naver/glink/android/sdk/ui/record/c;->i:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    sget v0, Lcom/naver/glink/android/sdk/ui/record/c;->i:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->k:I

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/record/c;->a(II)V

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x168

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/c;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0xdbba0

    if-eq p2, v0, :cond_0

    const v0, 0x2191c0

    if-eq p2, v0, :cond_0

    const v0, 0x3d0900

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/c;->g()V

    goto :goto_0
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/record/c;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/c;

    const/16 v1, 0x1e0

    const v2, 0x2191c0

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/record/c;-><init>(II)V

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 2

    const v1, 0x3f333333    # 0.7f

    const/16 v0, 0x2d0

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/record/c;->l:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_1

    int-to-float v0, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->l:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x168

    if-ne p1, v0, :cond_2

    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->l:I

    goto :goto_0

    :cond_2
    int-to-float v0, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->l:I

    goto :goto_0
.end method

.method private g()V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/ui/record/c;->g:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    sget v0, Lcom/naver/glink/android/sdk/ui/record/c;->i:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->k:I

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    sget v1, Lcom/naver/glink/android/sdk/ui/record/c;->h:I

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/record/c;->a(II)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/NCR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/naver/glink/android/sdk/ui/record/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->k:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->l:I

    return v0
.end method

.method public e()Landroid/graphics/Point;
    .locals 10

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    int-to-double v2, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-double v6, v0

    div-double/2addr v2, v6

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    mul-double/2addr v2, v0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    int-to-double v0, v0

    :goto_1
    double-to-int v2, v2

    iput v2, v4, Landroid/graphics/Point;->x:I

    double-to-int v0, v0

    iput v0, v4, Landroid/graphics/Point;->y:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget v0, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x10

    iput v0, v4, Landroid/graphics/Point;->x:I

    :cond_1
    iget v0, v4, Landroid/graphics/Point;->y:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget v0, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x10

    iput v0, v4, Landroid/graphics/Point;->y:I

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    int-to-double v2, v0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->j:I

    int-to-double v6, v0

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v8, v0

    div-double/2addr v6, v8

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->m:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/c;->m:Ljava/lang/String;

    return-object v0
.end method
