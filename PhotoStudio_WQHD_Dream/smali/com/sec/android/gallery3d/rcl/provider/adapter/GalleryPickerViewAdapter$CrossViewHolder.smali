.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;
.super Ljava/lang/Object;
.source "GalleryPickerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossViewHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public checkBoxBg:Landroid/widget/ImageView;

.field public expandButton:Landroid/widget/ImageView;

.field public gallery_button:Landroid/widget/ImageView;

.field public gallery_button_text:Landroid/widget/TextView;

.field public mIsFirstPosition:Z

.field public mediaKey:I

.field public privateIcon:Landroid/widget/ImageView;

.field public ripple:Landroid/widget/ImageView;

.field public thumbnail:Landroid/widget/ImageView;

.field public thumbnail_border:Landroid/widget/ImageView;

.field public videoIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;-><init>()V

    return-void
.end method
