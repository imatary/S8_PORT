.class public Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumTimeDimension"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;


# instance fields
.field private final album_time_VI_degree:[I

.field public final album_time_view_gap:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [I

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->album_time_VI_degree:[I

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->album_time_VI_degree:[I

    invoke-static {v3, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->album_time_view_gap:[I

    const v3, 0x7f0f000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->album_time_view_gap:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
