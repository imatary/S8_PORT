.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$2;
.super Ljava/lang/Object;
.source "GalleryPickerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$2;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string v0, "GalleryPickerViewAdapter"

    const-string v1, "Skip expand long click"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
