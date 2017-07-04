.class Lcom/sec/android/gallery3d/app/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$4;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$4;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$4;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->updateUseNaviBar()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$4;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$4;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/ui/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    :cond_0
    return-void
.end method
