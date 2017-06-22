.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$3;
.super Ljava/lang/Object;
.source "GalleryPickerViewAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->reloadData(ZZ)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$3;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadData()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$3;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->loadData()Z

    move-result v0

    return v0
.end method
