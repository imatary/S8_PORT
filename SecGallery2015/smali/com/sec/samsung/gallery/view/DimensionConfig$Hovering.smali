.class public Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hovering"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;


# instance fields
.field public final hovering_actionbar_button_height:I

.field public final hovering_actionbar_button_label_height:I

.field public final hovering_actionbar_button_label_margin_top:I

.field public final hovering_actionbar_button_label_width:I

.field public final hovering_actionbar_button_margin_left:I

.field public final hovering_actionbar_button_margin_right:I

.field public final hovering_actionbar_button_width:I

.field public final hovering_actionbar_height:I

.field public final hovering_actionbar_min_height:I

.field public final hovering_actionbar_min_width:I

.field public final hovering_actionbar_shadow_size:I

.field public final hovering_background_res_padding_bottom:I

.field public final hovering_background_res_padding_inside:I

.field public final hovering_background_res_padding_left:I

.field public final hovering_background_res_padding_right:I

.field public final hovering_background_res_padding_top:I

.field public final hovering_background_res_panorama_padding_left:I

.field public final hovering_background_res_panorama_padding_right:I

.field public final hovering_image_gap:I

.field public final hovering_image_height:I

.field public final hovering_image_icon_size:F

.field public final hovering_image_offset_xcoordinates_from_original_thumbnail:I

.field public final hovering_image_offset_ycoordinates_from_original_thumbnail:I

.field public final hovering_image_set_height:I

.field public final hovering_image_set_offset_xcoordinates_from_original_thumbnail:I

.field public final hovering_image_set_offset_ycoordinates_from_original_thumbnail:I

.field public final hovering_image_set_width:I

.field public final hovering_image_width:I

.field public final hovering_scroll_detect_area:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_width:I

    const v1, 0x7f0b0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_height:I

    const v1, 0x7f0b0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_offset_xcoordinates_from_original_thumbnail:I

    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_offset_ycoordinates_from_original_thumbnail:I

    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_width:I

    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_height:I

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_offset_xcoordinates_from_original_thumbnail:I

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_offset_ycoordinates_from_original_thumbnail:I

    const v1, 0x7f0b0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_gap:I

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_top:I

    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_left:I

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_right:I

    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_panorama_padding_left:I

    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_panorama_padding_right:I

    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_bottom:I

    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_inside:I

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_width:I

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_height:I

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_margin_left:I

    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_margin_right:I

    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_height:I

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_shadow_size:I

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_min_height:I

    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_min_width:I

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_height:I

    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_width:I

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_margin_top:I

    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_scroll_detect_area:F

    const v1, 0x7f0b0185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_icon_size:F

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
