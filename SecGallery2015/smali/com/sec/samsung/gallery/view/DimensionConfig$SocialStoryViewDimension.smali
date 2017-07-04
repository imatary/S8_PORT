.class public Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialStoryViewDimension"
.end annotation


# instance fields
.field public final social_story_view_album_gap:I

.field public final social_story_view_album_height:I

.field public final social_story_view_album_height_land:I

.field public final social_story_view_album_subtitle_text_size:I

.field public final social_story_view_album_title_side_padding:I

.field public final social_story_view_album_title_text_size:I

.field public final social_story_view_creator_icon_height:I

.field public final social_story_view_creator_icon_width:I

.field public final social_story_view_creator_text_size:I

.field public final social_story_view_creator_text_start_margin:I

.field public final social_story_view_deco_items_v_h_padding:I

.field public final social_story_view_label_text_size:I

.field public final social_story_view_string_creator_label:Ljava/lang/String;

.field public final social_story_view_string_new_label:Ljava/lang/String;

.field public final social_story_view_text_color:I

.field public final social_story_view_text_stroke_color:I

.field public final social_story_view_text_stroke_width:I

.field public final social_story_view_top_margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b082c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height:I

    const v1, 0x7f0b082d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_height_land:I

    const v1, 0x7f0b0839

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_top_margin:I

    const v1, 0x7f0b082b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_gap:I

    const v1, 0x7f0b0830

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_title_text_size:I

    const v1, 0x7f0b082e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_subtitle_text_size:I

    const v1, 0x7f0b0833

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_text_size:I

    const v1, 0x7f0b0838

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_label_text_size:I

    const v1, 0x7f0b082f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_album_title_side_padding:I

    const v1, 0x7f0b0832

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_icon_width:I

    const v1, 0x7f0b0831

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_icon_height:I

    const v1, 0x7f0b0835

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_deco_items_v_h_padding:I

    const v1, 0x7f0b0834

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_creator_text_start_margin:I

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_string_creator_label:Ljava/lang/String;

    const v1, 0x7f0a02c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_string_new_label:Ljava/lang/String;

    const v1, 0x7f100260

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_color:I

    const v1, 0x7f100080

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_color:I

    const v1, 0x7f0b01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;->social_story_view_text_stroke_width:I

    return-void
.end method
