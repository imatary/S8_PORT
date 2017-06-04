.class public Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelViewDimension"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;


# instance fields
.field public final channel_shared_person_thumb_height:I

.field public final channel_shared_person_thumb_width:I

.field public final channel_view_card_divider_icon_height:I

.field public final channel_view_card_divider_icon_width:I

.field public final channel_view_card_divider_width:I

.field public final channel_view_card_group_icon_width:I

.field public final channel_view_divider_top_margin:I

.field public final channel_view_icon_bottom_margin:I

.field public final channel_view_icon_end_margin:I

.field public final channel_view_name_max_width:I

.field public final channel_view_new_label_height:I

.field public final channel_view_new_label_padding:I

.field public final channel_view_new_mark_font_size:I

.field public final channel_view_received_event_title_gap:I

.field public final channel_view_selection_mode_title_left_margin:I

.field public final channel_view_sender_thumb_bottom_margin:I

.field public final channel_view_sender_thumb_top_margin:I

.field public final channel_view_sender_thumb_width:I

.field public final channel_view_sub_title_font_color:I

.field public final channel_view_sub_title_font_size:I

.field public final channel_view_sub_title_font_size_on_thumb:I

.field public final channel_view_sub_title_height:I

.field public final channel_view_sub_title_top_margin:I

.field public final channel_view_text_bottom_margin:I

.field public final channel_view_text_end_margin:I

.field public final channel_view_text_line_gap:I

.field public final channel_view_text_start_margin:I

.field public final channel_view_thumb_top_margin:I

.field public final channel_view_thumb_total_width:I

.field public final channel_view_title_font_color:I

.field public final channel_view_title_font_size:I

.field public final channel_view_title_font_size_on_thumb:I

.field public final channel_view_title_height:I

.field public final channel_view_title_left_margin:I

.field public final channel_view_title_top_margin:I

.field public final channel_view_up_ic_left_margin:I

.field public final channel_view_up_ic_top_margin:I

.field public final channel_view_up_ic_width:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_shared_person_thumb_height:I

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_shared_person_thumb_width:I

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_color:I

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_color:I

    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_size:I

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_size:I

    const v1, 0x7f0b02da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_size_on_thumb:I

    const v1, 0x7f0b02d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_size_on_thumb:I

    const v1, 0x7f0b02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_label_height:I

    const v1, 0x7f0b02d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_label_padding:I

    const v1, 0x7f0b02d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_mark_font_size:I

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_height:I

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_height:I

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_top_margin:I

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_top_margin:I

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_left_margin:I

    const v1, 0x7f0b02d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_start_margin:I

    const v1, 0x7f0b02d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_end_margin:I

    const v1, 0x7f0b02d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_bottom_margin:I

    const v1, 0x7f0b02cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_icon_end_margin:I

    const v1, 0x7f0b02ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_icon_bottom_margin:I

    const v1, 0x7f0b02d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_line_gap:I

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_selection_mode_title_left_margin:I

    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_icon_width:I

    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_width:I

    const v1, 0x7f0b008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_icon_height:I

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_divider_top_margin:I

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_thumb_top_margin:I

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_top_margin:I

    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_left_margin:I

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_width:I

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_group_icon_width:I

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_thumb_total_width:I

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_name_max_width:I

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_width:I

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_top_margin:I

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_bottom_margin:I

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_received_event_title_gap:I

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
