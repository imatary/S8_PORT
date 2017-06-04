.class public Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialStoryDetailDimension"
.end annotation


# instance fields
.field public final comments:Ljava/lang/String;

.field public final comments_footer_hint_text_color:I

.field public final comments_item_name_text_color:I

.field public final likes:Ljava/lang/String;

.field public final me:Ljava/lang/String;

.field public final social_story_detail_divider_color:I

.field public final social_story_detail_divider_size:I

.field public final social_story_detail_last_comment_person_text_size:I

.field public final social_story_detail_last_comment_text_color:I

.field public final social_story_detail_last_comment_text_size:I

.field public final social_story_detail_like_comment_icon_size:I

.field public final social_story_detail_like_comment_number_text_size:I

.field public final social_story_detail_owner_name_text_size:I

.field public final social_story_detail_v_h_gap:I

.field public final unknown:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0828

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_owner_name_text_size:I

    const v1, 0x7f0b0827

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_number_text_size:I

    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_person_text_size:I

    const v1, 0x7f0b0825

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_size:I

    const v1, 0x7f0b0826

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    const v1, 0x7f0b0829

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_v_h_gap:I

    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_divider_size:I

    const v1, 0x7f1001eb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_divider_color:I

    const v1, 0x7f1001ec

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_last_comment_text_color:I

    const v1, 0x7f10008a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_item_name_text_color:I

    const v1, 0x7f100082

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments_footer_hint_text_color:I

    const v1, 0x7f0a0256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->me:Ljava/lang/String;

    const v1, 0x7f0a0496

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->unknown:Ljava/lang/String;

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->comments:Ljava/lang/String;

    const v1, 0x7f0a0243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->likes:Ljava/lang/String;

    return-void
.end method
