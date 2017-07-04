.class public Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailViewDimensionOver30"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;


# instance fields
.field public final thumbnail_album_camera_icon_size_n_os:I

.field public final thumbnail_album_camera_memory_icon_width_over_30:I

.field public final thumbnail_album_play_icon_height_over_30:I

.field public final thumbnail_album_play_icon_padding_over_30:I

.field public final thumbnail_album_play_icon_width_over_30:I

.field public final thumbnail_split_album_play_icon_padding_over_30:I

.field public final thumbnail_view_360_icon_width_over_30:I

.field public final thumbnail_view_cloud_icon_margin:I

.field public final thumbnail_view_cloud_icon_size:I

.field public final thumbnail_view_duration_text_padding_over_30:I

.field public final thumbnail_view_fast_slow_icon_width_over_30:I

.field public final thumbnail_view_play_icon_height_over_30:I

.field public final thumbnail_view_play_icon_padding_bottom_over_30:I

.field public final thumbnail_view_play_icon_padding_start_over_30:I

.field public final thumbnail_view_play_icon_width_over_30:I

.field public final thumbnail_view_video_duration_font_size_over_30:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_height_over_30:I

    const v1, 0x7f0b0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_height_over_30:I

    const v1, 0x7f0b027d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_padding_start_over_30:I

    const v1, 0x7f0b027c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_padding_bottom_over_30:I

    const v1, 0x7f0b0269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_padding_over_30:I

    const v1, 0x7f0b026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_split_album_play_icon_padding_over_30:I

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_width_over_30:I

    const v1, 0x7f0b026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_width_over_30:I

    const v1, 0x7f0b0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_camera_memory_icon_width_over_30:I

    const v1, 0x7f0b03b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_camera_icon_size_n_os:I

    const v1, 0x7f0b0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_fast_slow_icon_width_over_30:I

    const v1, 0x7f0b026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_360_icon_width_over_30:I

    const v1, 0x7f0b03b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_cloud_icon_margin:I

    const v1, 0x7f0b08bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_cloud_icon_size:I

    const v1, 0x7f0b0286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_video_duration_font_size_over_30:I

    const v1, 0x7f0b0270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_duration_text_padding_over_30:I

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
