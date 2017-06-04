.class public Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventViewDimension"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;


# instance fields
.field public final event_view_selection_mode_title_left_margin:I

.field public final event_view_sub_title_font_color:I

.field public final event_view_sub_title_font_size:I

.field public final event_view_sub_title_top_margin:I

.field public final event_view_suggestion_font_color:I

.field public final event_view_suggestion_font_size:I

.field public final event_view_suggestion_height:I

.field public final event_view_suggestion_right_margin:I

.field public final event_view_suggestion_start_padding:I

.field public final event_view_suggestion_top_margin:I

.field public final event_view_title_font_color:I

.field public final event_view_title_font_size:I

.field public final event_view_title_height:I

.field public final event_view_title_left_margin:I

.field public final event_view_title_padding_for_ssfont:I

.field public final event_view_title_top_margin:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_font_color:I

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_font_color:I

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_font_color:I

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_font_size:I

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_font_size:I

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_font_size:I

    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_height:I

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_left_margin:I

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_top_margin:I

    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_top_margin:I

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_height:I

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_top_margin:I

    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_right_margin:I

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_start_padding:I

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_padding_for_ssfont:I

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_selection_mode_title_left_margin:I

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
