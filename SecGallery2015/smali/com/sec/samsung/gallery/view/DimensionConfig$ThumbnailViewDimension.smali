.class public Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailViewDimension"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;


# instance fields
.field public final channel_view_tablet_new_mark_top_margin:I

.field public final thumbnail_view_camera_icon_margin_bottom:I

.field public final thumbnail_view_camera_icon_margin_left:I

.field public final thumbnail_view_gif_mark_height:I

.field public final thumbnail_view_gif_mark_margin:I

.field public final thumbnail_view_gif_mark_side_padding:I

.field public final thumbnail_view_icon_left_padding:I

.field public final thumbnail_view_new_album_background_color:I

.field public final thumbnail_view_new_album_header_padding_bottom:I

.field public final thumbnail_view_new_album_header_padding_left:I

.field public final thumbnail_view_new_album_header_padding_top:I

.field public final thumbnail_view_new_album_select_box_height:I

.field public final thumbnail_view_new_album_select_count_font_color:I

.field public final thumbnail_view_new_album_select_count_font_size:I

.field public final thumbnail_view_new_album_select_count_hpadding_right:I

.field public final thumbnail_view_new_album_select_count_text_margin_left:I

.field public final thumbnail_view_new_album_select_count_text_margin_right:I

.field public final thumbnail_view_new_album_select_count_vpadding_top:I

.field public final thumbnail_view_new_mark_right_margin:I

.field public final thumbnail_view_new_mark_top_margin:I

.field public final thumbnail_view_play_icon_size:I

.field public final thumbnail_view_split_album_new_font_size:I

.field public final thumbnail_view_split_album_seprator_ratio_divider_height:F

.field public final thumbnail_view_split_album_title_padding_left:I

.field public final thumbnail_view_total_time_title_height:I

.field public final thumbnail_view_video_duration_font_color:I

.field public final thumbnail_view_video_duration_font_size:I

.field public final thumbnail_view_video_duration_text_padding:I

.field public final thumbnail_view_video_duration_text_padding_bottom:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_new_font_size:I

    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_title_padding_left:I

    const v1, 0x7f0a050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_seprator_ratio_divider_height:F

    const v1, 0x7f0b0275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_top:I

    const v1, 0x7f0b0273

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_bottom:I

    const v1, 0x7f0b0274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_left:I

    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_box_height:I

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_font_color:I

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_background_color:I

    const v1, 0x7f0b0276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_font_size:I

    const v1, 0x7f0b027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_vpadding_top:I

    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_hpadding_right:I

    const v1, 0x7f0b0279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_text_margin_right:I

    const v1, 0x7f0b0278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_text_margin_left:I

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_play_icon_size:I

    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_font_size:I

    const v1, 0x7f100222

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_font_color:I

    const v1, 0x7f0b0287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_text_padding:I

    const v1, 0x7f0b0288

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_text_padding_bottom:I

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0394

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0b0152

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_total_time_title_height:I

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_camera_icon_margin_left:I

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_camera_icon_margin_bottom:I

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_mark_top_margin:I

    const v1, 0x7f0b03e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->channel_view_tablet_new_mark_top_margin:I

    const v1, 0x7f0b01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_mark_right_margin:I

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_margin:I

    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_height:I

    const v1, 0x7f0b03bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_side_padding:I

    const v1, 0x7f0b0272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_icon_left_padding:I

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
