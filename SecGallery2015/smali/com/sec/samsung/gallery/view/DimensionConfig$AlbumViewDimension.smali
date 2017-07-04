.class public Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumViewDimension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;


# instance fields
.field public final album_new_label_padding:I

.field public final album_new_label_padding_over_30:I

.field public final album_new_label_top_padding:I

.field public final album_view_default_mode:I

.field public final album_view_mode_count:I

.field public final album_view_scrollbar_width:I

.field public final mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_default_mode:I

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_mode_count:I

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_padding:I

    const v2, 0x7f0b02a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_padding_over_30:I

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_top_padding:I

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_scrollbar_width:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_mode_count:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_mode_count:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    new-instance v3, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    aget-object v2, v2, v0

    const v3, 0x7f0f0004

    invoke-static {v1, v3, v0}, Lcom/sec/samsung/gallery/view/DimensionConfig;->access$000(Landroid/content/res/Resources;II)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;->thumbnail_height:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    aget-object v2, v2, v0

    const v3, 0x7f0f0003

    invoke-static {v1, v3, v0}, Lcom/sec/samsung/gallery/view/DimensionConfig;->access$000(Landroid/content/res/Resources;II)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;->name_textbox_height:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
